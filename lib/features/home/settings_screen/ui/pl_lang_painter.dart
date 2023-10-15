import 'package:flutter/widgets.dart';

class PLLangPainter extends CustomPainter {
  const PLLangPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffECF0F1);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height * 0.5), white);

    final red = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffF0615D);
    canvas.drawRect(Rect.fromLTWH(0, size.height * 0.5, size.width, size.height * 0.5), red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
