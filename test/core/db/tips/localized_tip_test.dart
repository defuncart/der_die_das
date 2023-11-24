import 'package:der_die_das/core/db/tips/localized_tip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_utils.dart';

void main() {
  testWidgets('getAllTips', (tester) async {
    await tester.pumpWidget(
      wrapWithMaterialAppLocalizationDelegates(
        const SizedBox.shrink(),
      ),
    );

    final BuildContext context = tester.element(find.byType(SizedBox));

    expect(
      () => getAllTips(context: context),
      returnsNormally,
    );

    expect(
      getAllTips(context: context).toList(),
      hasLength(29),
    );
  });
}
