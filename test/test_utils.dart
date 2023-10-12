import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// Wraps [widget] with in [MaterialApp]
Widget wrapWithMaterialApp(
  Widget widget, {
  bool useScaffold = false,
}) =>
    MaterialApp(
      home: _optionallyWrapWithScaffold(widget, useScaffold: useScaffold),
    );

/// Wraps [widget] with in [MaterialApp] while also setting en as locale
Widget wrapWithMaterialAppLocalizationDelegates(
  Widget widget, {
  bool useScaffold = false,
}) =>
    MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      home: _optionallyWrapWithScaffold(widget, useScaffold: useScaffold),
    );

Widget _optionallyWrapWithScaffold(
  Widget widget, {
  bool useScaffold = false,
}) =>
    useScaffold ? Scaffold(body: widget) : widget;
