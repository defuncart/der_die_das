import 'package:der_die_das/core/l10n/generated/localizations.dart';
import 'package:flutter/material.dart';

/// Wraps [widget] with in [MaterialApp]
Widget wrapWithMaterialApp(Widget widget, {bool useScaffold = false}) =>
    MaterialApp(home: _optionallyWrapWithScaffold(widget, useScaffold: useScaffold));

/// Wraps [widget] with in [MaterialApp] while also setting en as locale
Widget wrapWithMaterialAppLocalizationDelegates(Widget widget, {bool useScaffold = false}) => MaterialApp(
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  locale: const Locale('en'),
  home: _optionallyWrapWithScaffold(widget, useScaffold: useScaffold),
);

Widget _optionallyWrapWithScaffold(Widget widget, {bool useScaffold = false}) =>
    useScaffold ? Scaffold(body: widget) : widget;
