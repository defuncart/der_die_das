import 'dart:math';

import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/state/state.dart';
import 'package:der_die_das/core/extensions/theme_extensions.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:der_die_das/core/ui/common/level_icon.dart';
import 'package:der_die_das/core/ui/common/rounded_square.dart';
import 'package:der_die_das/features/home/nouns_screen/filter_search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NounsScreen extends StatefulWidget {
  static const routeName = 'NounsScreen';

  const NounsScreen({super.key});

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
          (text: query, level: _levelFilter.asLevel),
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
        subtitle: Container(
          height: 16,
          margin: context.customPaddings.sVertical,
          decoration: BoxDecoration(
            border: Border.all(
              color: context.colorScheme.primary,
              width: 1,
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * Random().nextDouble(),
              height: constraints.maxHeight,
              color: context.colorScheme.primary,
            ),
          ),
        ),
        trailing: BasicButton(
          onTap: () {},
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

@visibleForTesting
final filterNounsProvider = FutureProvider.family<List<Noun>, FilterSearch>(
  (ref, filter) => ref.read(nounDatabaseProvider).filterNouns(
        text: filter.text,
        level: filter.level,
      ),
);
