import 'package:flutter/cupertino.dart';
import 'package:portfolio/presentation/constants/colors.dart';

class TimelineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: CustomPaint(
      size: const Size(16, 16),
      painter: TimelinePainter(),
    ),
  );
}

class TimelinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(size.width / 2, 0);
    final p2 = Offset(size.width / 2, size.height);
    final paint = Paint()
      ..color = ThemeColors.black25
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter _) => false;
}
