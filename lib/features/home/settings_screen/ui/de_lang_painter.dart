import 'package:flutter/widgets.dart';

class DELangPainter extends CustomPainter {
  const DELangPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final black =
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color(0xff2A2628);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height * 0.333333), black);

    final red =
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color(0xffF0615D);
    canvas.drawRect(Rect.fromLTWH(0, size.height * 0.333333, size.width, size.height * 0.333333), red);

    final yellow =
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color(0xffF5C643);
    canvas.drawRect(Rect.fromLTWH(0, size.height * 0.333333 * 2, size.width, size.height * 0.333333), yellow);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
