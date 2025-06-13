import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';

Iterable<LocalizedTip> getAllTips({
  required BuildContext context,
}) => [
  100,
  101,
  102,
  107,
  112,
  113,
  114,
  200,
  202,
  203,
  204,
  205,
  206,
  211,
  213,
  214,
  215,
  216,
  217,
  218,
  300,
  301,
  305,
  306,
  307,
  308,
  309,
  400,
  402,
].map((index) => getTip(context: context, index: index));

LocalizedTip getTip({
  required BuildContext context,
  required int index,
}) => switch (index) {
  100 => LocalizedTip._(
    description: context.l10n.tip100,
    example: _TipExamples.tip100,
  ),
  101 => LocalizedTip._(
    description: context.l10n.tip101,
    example: _TipExamples.tip101,
  ),
  102 => LocalizedTip._(
    description: context.l10n.tip102,
    example: _TipExamples.tip102,
  ),
  107 => LocalizedTip._(
    description: context.l10n.tip107,
    example: _TipExamples.tip107,
  ),
  112 => LocalizedTip._(
    description: context.l10n.tip112,
    example: _TipExamples.tip112,
  ),
  113 => LocalizedTip._(
    description: context.l10n.tip113,
    example: _TipExamples.tip113,
  ),
  114 => LocalizedTip._(
    description: context.l10n.tip114,
    example: _TipExamples.tip114,
  ),
  200 => LocalizedTip._(
    description: context.l10n.tip200,
    example: _TipExamples.tip200,
  ),
  202 => LocalizedTip._(
    description: context.l10n.tip202,
    example: _TipExamples.tip202,
  ),
  203 => LocalizedTip._(
    description: context.l10n.tip203,
    example: _TipExamples.tip203,
  ),
  204 => LocalizedTip._(
    description: context.l10n.tip204,
    example: _TipExamples.tip204,
  ),
  205 => LocalizedTip._(
    description: context.l10n.tip205,
    example: _TipExamples.tip205,
  ),
  206 => LocalizedTip._(
    description: context.l10n.tip206,
    example: _TipExamples.tip206,
  ),
  211 => LocalizedTip._(
    description: context.l10n.tip211,
    example: _TipExamples.tip211,
  ),
  213 => LocalizedTip._(
    description: context.l10n.tip213,
    example: _TipExamples.tip213,
  ),
  214 => LocalizedTip._(
    description: context.l10n.tip214,
    example: _TipExamples.tip214,
  ),
  215 => LocalizedTip._(
    description: context.l10n.tip215,
    example: _TipExamples.tip215,
  ),
  216 => LocalizedTip._(
    description: context.l10n.tip216,
    example: _TipExamples.tip216,
  ),
  217 => LocalizedTip._(
    description: context.l10n.tip217,
    example: _TipExamples.tip217,
  ),
  218 => LocalizedTip._(
    description: context.l10n.tip218,
    example: _TipExamples.tip218,
  ),
  300 => LocalizedTip._(
    description: context.l10n.tip300,
    example: _TipExamples.tip300,
  ),
  301 => LocalizedTip._(
    description: context.l10n.tip301,
    example: _TipExamples.tip301,
  ),
  305 => LocalizedTip._(
    description: context.l10n.tip305,
    example: _TipExamples.tip305,
  ),
  306 => LocalizedTip._(
    description: context.l10n.tip306,
    example: _TipExamples.tip306,
  ),
  307 => LocalizedTip._(
    description: context.l10n.tip307,
    example: _TipExamples.tip307,
  ),
  308 => LocalizedTip._(
    description: context.l10n.tip308,
    example: _TipExamples.tip308,
  ),
  309 => LocalizedTip._(
    description: context.l10n.tip309,
    example: _TipExamples.tip309,
  ),
  400 => LocalizedTip._(
    description: context.l10n.tip400,
    example: _TipExamples.tip400,
  ),
  402 => LocalizedTip._(
    description: context.l10n.tip402,
    example: _TipExamples.tip402,
  ),
  _ => throw Exception(),
};

class LocalizedTip {
  const LocalizedTip._({
    required this.description,
    required this.example,
  });

  final String description;
  final String example;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is LocalizedTip && other.description == description && other.example == example;
  }

  @override
  int get hashCode => description.hashCode ^ example.hashCode;

  @override
  String toString() => 'Tip(description: $description, example: $example)';
}

class _TipExamples {
  _TipExamples._();

  static const tip100 = '<color>der</color> Mann, <color>der</color> Sohn, <color>der</color> Artz';
  static const tip101 = '<color>der</color> Mittwoch, <color>der</color> April, <color>der</color> Winter';
  static const tip102 = '<color>der</color> Wein, <color>der</color> Wodka | <color>das</color> Bier';
  static const tip107 = '<color>der</color> Migrant, <color>der</color> Praktikant | <color>das</color> Restaurant';
  static const tip112 = '<color>der</color> Doktor';
  static const tip113 = '<color>der</color> Vater | <color>die</color> Schwester, <color>das</color> Messer';
  static const tip114 = '<color>der</color> Garten, <color>der</color> Laden | <color>das</color> Weihnachten';
  static const tip200 = '<color>die</color> Frau, <color>die</color> Tochter, <color>die</color> Ärtzin';
  static const tip202 = '<color>die</color> Gesundheit, <color>die</color> Krankheit';
  static const tip203 = '<color>die</color> Sehenswürdigkeit';
  static const tip204 = '<color>die</color> Landschaft, <color>die</color> Mannschaft';
  static const tip205 = '<color>die</color> Kleidung, <color>die</color> Prüfung';
  static const tip206 = '<color>die</color> Qualität, <color>die</color> Universität';
  static const tip211 = '<color>die</color> Situation, <color>die</color> Portion';
  static const tip213 = '<color>die</color> Woche | <color>der</color> Kunde, <color>das</color> Auge';
  static const tip214 = '<color>die</color> Datei, <color>die</color> Polizei | <color>das</color> Ei';
  static const tip215 = '<color>die</color> Familie';
  static const tip216 = '<color>die</color> Kosmetik, <color>die</color> Musik | <color>der</color> Katholik';
  static const tip217 = '<color>die</color> Freundin | <color>der</color> Termin, <color>das</color> Bein';
  static const tip218 = '<color>die</color> Reparatur';
  static const tip300 = '<color>das</color> Mädchen, <color>das</color> Fräulein';
  static const tip301 = '<color>das</color> Essen, <color>das</color> Leben';
  static const tip305 = '<color>das</color> Apartment | <color>der</color> Moment';
  static const tip306 = '<color>das</color> Ergebnis | <color>die</color> Erlaubnis';
  static const tip307 = '<color>das</color> Auto | <color>der</color> Euro, <color>die</color> Disco';
  static const tip308 = '<color>das</color> Studium | <color>der</color> Raum';
  static const tip309 = '<color>das</color> Getränk | <color>die</color> Geschichte';
  static const tip400 =
      '<color>der</color> Groß<color>vater</color>, <color>die</color> Auto<color>bahn</color>, <color>das</color> Wörter<color>buch</color>';
  static const tip402 = '<color>der</color> oder <color>die</color> Deutsche';
}
