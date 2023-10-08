import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:der_die_das/core/ui/common/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/level_icon.dart';
import 'package:der_die_das/core/ui/common/rounded_square.dart';
import 'package:der_die_das/features/home/nouns_screen/state/nouns_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NounsScreen extends ConsumerStatefulWidget {
  static const path = '/nouns';

  const NounsScreen({super.key});

  @override
  ConsumerState<NounsScreen> createState() => _NounsScreenState();
}

class _NounsScreenState extends ConsumerState<NounsScreen> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  var _allNounsForCurrentLevel = <Noun>[];
  var _results = <Noun>[];
  var _showClearButton = false;

  String get _searchTerm => _controller.text.trim();
  bool get _showAllNounsForCurrentLevel => _searchTerm.isEmpty;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController()
      ..addListener(() async {
        final searchTerm = _searchTerm;
        if (searchTerm.isNotEmpty) {
          await ref.read(filterNounsProvider(searchTerm).future).then((value) => setState(() => _results = value));
        } else {
          setState(() => _results = <Noun>[]);
        }

        final showClearButton = _controller.text.isNotEmpty;
        if (_showClearButton != showClearButton) {
          setState(() => _showClearButton = showClearButton);
        }
      });
    _focusNode = FocusNode()..requestFocus();

    _init();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _init() async {
    await ref
        .read(nounsForCurrentLevelProvider.future)
        .then((value) => setState(() => _allNounsForCurrentLevel = value));
  }

  @override
  Widget build(BuildContext context) {
    final hintColor = context.customColorScheme.defaultButton.withOpacity(0.5);

    return Scaffold(
      appBar: AppBar(
        leading: const BasicMaterialCloseButton(),
        title: TextField(
          controller: _controller,
          focusNode: _focusNode,
          decoration: InputDecoration(
            hintText: context.l10n.nounsSearchFieldHint,
            hintStyle: TextStyle(
              color: hintColor,
            ),
            suffixIcon: _showClearButton
                ? IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 20,
                      color: context.customColorScheme.defaultButton.withOpacity(0.5),
                    ),
                    onPressed: () => _controller.clear(),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                  )
                : null,
          ),
          style: TextStyle(
            color: context.customColorScheme.defaultButton,
          ),
        ),
      ),
      body: _showAllNounsForCurrentLevel
          ? _allNounsForCurrentLevel.isNotEmpty
              ? _NounResultList(
                  results: _allNounsForCurrentLevel,
                )
              : const SizedBox.shrink()
          : _results.isNotEmpty
              ? _NounResultList(
                  results: _results,
                )
              : Center(
                  child: Text(context.l10n.nounsNoResultsFound),
                ),
    );
  }
}

class _NounResultList extends StatelessWidget {
  const _NounResultList({
    Key? key,
    required this.results,
  }) : super(key: key);

  final List<Noun> results;

  @override
  Widget build(BuildContext context) {
    // TODO move into db
    results.sort((a, b) => a.withoutArticle.compareTo(b.withoutArticle));

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: results.length,
      itemBuilder: (context, count) => ListTile(
        contentPadding: context.customPaddings.s,
        title: Row(
          children: [
            Flexible(
              child: Text(results[count].withArticle),
            ),
            context.customSpacings.s,
            LevelIcon(
              level: results[count].level,
              size: 24,
            ),
          ],
        ),
        trailing: BasicButton(
          onPressed: () {},
          child: RoundedSquare(
            size: kMinInteractiveDimension,
            color: context.customColorScheme.defaultButton,
            borderRadius: context.customRadii.xs,
            child: Icon(
              Icons.volume_up,
              size: kMinInteractiveDimension * 0.6,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
