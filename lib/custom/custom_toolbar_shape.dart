import 'package:flutter/material.dart';

class CustomToolbarShape extends CustomPainter {
  final Color lineColor;

  const CustomToolbarShape({required this.lineColor});

  @override
  void paint(Canvas canvas, Size size) {
    // first oval(楕円)
    Paint paint = Paint();
    Path path = Path();

    // グラデーション処理を入れる範囲
    // Rect pathGradirntRect = Rect.fromCircle(
    //   center: Offset(size.width / 4, 0),
    //   radius: size.width / 1.4,
    // );

    // グラデーションの設定
    // Gradient gradient = LinearGradient(colors: <Color>[
    //   const Color.fromRGBO(255, 89, 89, 1).withOpacity(1),
    //   const Color.fromRGBO(255, 128, 16, 1).withOpacity(1),
    // ], stops: const [
    //   0.3,
    //   1.0
    // ]);

    // pathでラインを引く
    path.lineTo(-size.width / 1.4, 0);
    // quadraticBezierToで曲線を引く
    path.quadraticBezierTo(
        size.width / 2, size.height * 2, size.width + size.width / 1.4, 0);

    paint.color = lineColor;
    // paint.shader = gradient.createShader(pathGradirntRect);
    paint.strokeWidth = 40;
    path.close();

    // pathで書いたライン、塗ったpaintをcanvasに描画
    canvas.drawPath(path, paint);

    // second oval(Appbarの内側に表示する楕円形のグラデーションのレイアウト？)
    Rect secondOvalRect = Rect.fromPoints(
      Offset(-size.width / 2.5, -size.height),
      Offset(size.width * 1.4, size.height / 1.5),
    );

    // gradient = LinearGradient(colors: <Color>[
    //   const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.1),
    //   const Color.fromRGBO(255, 206, 31, 1).withOpacity(0.2),
    // ], stops: const [
    //   0.0,
    //   1.0,
    // ]);

    Paint secondOvalPaint = Paint()..color = lineColor;
    // ..shader = gradient.createShader(secondOvalRect);

    canvas.drawOval(secondOvalRect, secondOvalPaint);

    // third oval

    // fourth oval
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
