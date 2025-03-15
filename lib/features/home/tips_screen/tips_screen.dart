import 'package:der_die_das/core/db/tips/localized_tip.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/text/highlighted_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle;

class TipsScreen extends StatefulWidget {
  static const path = '/tips';

  const TipsScreen({super.key});

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  SystemUiOverlayStyle? _defaultOverlayStyle;

  @override
  void dispose() {
    // reset style
    SystemChrome.setSystemUIOverlayStyle(_defaultOverlayStyle ?? SystemUiOverlayStyle.dark);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _defaultOverlayStyle = Theme.of(context).appBarTheme.systemOverlayStyle;
    // define a custom style
    // AnnotatedRegion seems to be needed to bottom nav, appBar.systemOverlayStyle for status bar
    final customOverlayStyle = SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: context.colorScheme.primary,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: context.colorScheme.primary,
    );

    final tips = getAllTips(context: context).toList();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: customOverlayStyle,
      child: Scaffold(
        backgroundColor: context.colorScheme.primary,
        appBar: AppBar(
          leading: const BasicMaterialCloseButton(),
          backgroundColor: context.colorScheme.primary,
          foregroundColor: context.colorScheme.onPrimary,
          title: Text(context.l10n.tipsTitle),
          systemOverlayStyle: customOverlayStyle,
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: tips.length,
          separatorBuilder: (context, _) => context.customSpacings.s,
          itemBuilder:
              (context, index) => Container(
                margin: context.customPaddings.sHorizontal,
                decoration: BoxDecoration(
                  borderRadius: context.customRadii.xs,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: ListTile(
                  title: Padding(
                    padding: context.customPaddings.xsVertical,
                    child: Column(
                      spacing: context.customSpacings.s.mainAxisExtent,
                      children: [
                        HighlightedText(tips[index].description, highlightColor: context.colorScheme.primary),
                        HighlightedText(tips[index].example, highlightColor: context.colorScheme.primary),
                      ],
                    ),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
