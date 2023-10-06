import 'package:der_die_das/core/ui/common/basic_material_icon_button.dart';
import 'package:flutter/material.dart';

class BasicMaterialCloseButton extends StatelessWidget {
  const BasicMaterialCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasicMaterialIconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: Icons.close,
    );
  }
}
