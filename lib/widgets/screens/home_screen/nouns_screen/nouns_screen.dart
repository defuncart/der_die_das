import 'package:der_die_das/configs/app_theme.dart';
import 'package:der_die_das/extensions/list_widget_extensions.dart';
import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:der_die_das/services/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/state/state.dart';
import 'package:der_die_das/widgets/common/level_icon.dart';
import 'package:der_die_das/widgets/common/rounded_rectangle.dart';
import 'package:der_die_das/widgets/screens/home_screen/nouns_screen/filter_search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class NounsScreen extends StatefulWidget {
  static const routeName = 'NounsScreen';

  const NounsScreen({Key? key}) : super(key: key);

  @override
  State<NounsScreen> createState() => _NounsScreenState();
}

class _NounsScreenState extends State<NounsScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => showSearch(
        context: context,
        delegate: _SearchDelegate(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

enum _LevelFilter {
  all,
  a1,
  a2,
}

extension on _LevelFilter {
  Level? get asLevel {
    switch (this) {
      case _LevelFilter.all:
        return null;
      case _LevelFilter.a1:
        return Level.a1;
      case _LevelFilter.a2:
        return Level.a2;
    }
  }
}

class _SearchDelegate extends SearchDelegate {
  _SearchDelegate();

  var _levelFilter = _LevelFilter.all;

  @override
  ThemeData appBarTheme(BuildContext context) => Theme.of(context).copyWith();

  @override
  List<Widget> buildActions(BuildContext context) => [
        DropdownButton<_LevelFilter>(
          items: _LevelFilter.values
              .map((value) => DropdownMenuItem(
                    value: value,
                    child: Text(describeEnum(value).toUpperCase()),
                  ))
              .toList(),
          value: _levelFilter,
          onChanged: (levelFilter) {
            _levelFilter = levelFilter!;
            // HACK to rebuild suggestions/results
            query = query;
          },
        ),
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = '',
        ),
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
        Navigator.of(context).pop();
      });

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return const Center(
        child: Text('Invalid search term'),
      );
    }

    return _showResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) => _showResults(context);

  Widget _showResults(BuildContext context) {
    if (query.isEmpty) {
      return const SizedBox.shrink();
    }

    return Consumer(builder: (context, ref, _) {
      final filteredNouns = ref.watch(
        filterNounsProvider(
          FilterSearch(text: query, level: _levelFilter.asLevel),
        ),
      );

      return filteredNouns.when(
        loading: () => const SizedBox.shrink(),
        error: (err, _) => const SizedBox.shrink(),
        data: (results) => _NounResultList(
          results: results,
        ),
      );
    });
  }
}

class _NounResultList extends StatelessWidget {
  const _NounResultList({required this.results, Key? key}) : super(key: key);

  final List<Noun> results;

  @override
  Widget build(BuildContext context) {
    // TODO move into db
    results.sort((a, b) => a.withoutArticle.compareTo(b.withoutArticle));

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: results.length,
      itemBuilder: (context, count) => ListTile(
        title: Text(results[count].withArticle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.8,
              child: LevelIcon(
                level: results[count].level,
              ),
            ),
            RoundedRectangle(
              width: 24,
              height: 24,
              color: AppColors.black,
              borderRadius: 4,
              child: Icon(
                Icons.volume_up,
                size: 24 * 0.6,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ].intersperse(const Gap(4)),
        ),
      ),
    );
  }
}

@visibleForTesting
final filterNounsProvider = FutureProvider.family<List<Noun>, FilterSearch>(
  (ref, filter) => ref.read(nounDatabaseProvider).filterNouns(
        text: filter.text,
        level: filter.level,
      ),
);
