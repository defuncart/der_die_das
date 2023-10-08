import 'package:der_die_das/core/db/tips/model/tip.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/extensions/theme_extensions.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/core/ui/common/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/highlighted_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;

class TipsScreen extends StatelessWidget {
  static const path = '/tips';

  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tips = getAllTips(context: context).toList();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: context.colorScheme.primary,
      ),
      child: Scaffold(
        backgroundColor: context.colorScheme.primary,
        appBar: AppBar(
          leading: const BasicMaterialCloseButton(),
          backgroundColor: context.colorScheme.primary,
          foregroundColor: context.colorScheme.onPrimary,
          title: Text(context.l10n.tipsTitle),
          centerTitle: true,
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: tips.length,
          separatorBuilder: (context, _) => context.customSpacings.s,
          itemBuilder: (context, index) => Container(
            margin: context.customPaddings.sHorizontal,
            decoration: BoxDecoration(
              borderRadius: context.customRadii.xs,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: ListTile(
              title: Padding(
                padding: context.customPaddings.xsVertical,
                child: Column(
                  children: [
                    HighlightedText(
                      tips[index].description,
                      highlightColor: context.colorScheme.primary,
                    ),
                    HighlightedText(
                      tips[index].example,
                      highlightColor: context.colorScheme.primary,
                    ),
                  ].intersperse(context.customSpacings.s),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
