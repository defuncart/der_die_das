import 'package:der_die_das/core/ui/common/buttons/basic_material_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BasicMaterialCloseButton extends StatelessWidget {
  const BasicMaterialCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasicMaterialIconButton(
      onPressed: () => context.pop(),
      icon: Icons.close,
    );
  }
}
