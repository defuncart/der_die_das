import 'package:der_die_das/configs/app_theme.dart';
import 'package:der_die_das/extensions/list_widget_extensions.dart';
import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:der_die_das/widgets/common/level_icon.dart';
import 'package:der_die_das/widgets/common/rounded_rectangle.dart';
import 'package:flutter/material.dart';
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

class _SearchDelegate extends SearchDelegate {
  _SearchDelegate();

  @override
  ThemeData appBarTheme(BuildContext context) => Theme.of(context).copyWith();

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = '',
        ),
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
      icon: const Icon(Icons.arrow_back_ios), //TODO platform adaptive
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

    return _showResults;
  }

  @override
  Widget buildSuggestions(BuildContext context) => _showResults;

  Widget get _showResults {
    final results = _nouns.where((element) => element.last.contains(query)).toList();

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: results.length,
      itemBuilder: (context, count) => ListTile(
        title: Text('${results[count].first} ${results[count].last}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LevelIcon(level: Level.a1),
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

const _nouns = [
  ['die', 'Abfahrt'],
  ['der', 'Absender'],
  ['die', 'Adresse'],
  ['das', 'Alter'],
  ['das', 'Angebot'],
  ['der', 'Anfang'],
  ['die', 'Ankunft'],
  ['die', 'Anmeldung'],
  ['die', 'Anrede'],
  ['der', 'Anruf'],
  ['die', 'Ansage'],
  ['der', 'Anschluss'],
  ['die', 'Antwort'],
  ['die', 'Anzeige'],
  ['das', 'Apartment'],
  ['der', 'Apfel'],
  ['der', 'Appetit'],
  ['die', 'Arbeit'],
  ['der', 'Arbeitsplatz'],
  ['der', 'Arm'],
  ['der', 'Arzt'],
  ['die', 'Aufgabe'],
  ['der', 'Aufzug'],
  ['das', 'Auge'],
  ['der', 'Ausflug'],
  ['der', 'Ausgang'],
  ['die', 'Auskunft'],
  ['das', 'Ausland'],
  ['der', 'Ausländer'],
  ['die', 'Aussage'],
  ['der', 'Ausweis'],
  ['die', 'Autobahn'],
  ['der', 'Automat'],
];
