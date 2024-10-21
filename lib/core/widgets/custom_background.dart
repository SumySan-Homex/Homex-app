import 'package:flutter/material.dart';
import 'package:homex/core/constants/color.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;

  const CustomBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ColoredBox(color: AppColors.primary),
        ),
        CustomPaint(
          // painter: CirclePainter(),
          painter: EllipsePainter(),
          child: Container(),
        ),
        Positioned(
            right: 0,
            top: 10,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ))),
        child,
      ],
    );
  }
}

class EllipsePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.secondary
      ..style = PaintingStyle.fill;

    // Draw an ellipse on the top right corner
    final rect = Rect.fromCircle(
      center: Offset(size.width * 1.1, size.height * -0.05),
      radius: size.width * 0.9,
    );
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// class CirclePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint()
//       ..color = AppColors.secondary
//       ..style = PaintingStyle.fill;

//     // Draw a larger circle on the top right corner
//     canvas.drawCircle(
//       Offset(size.width * 1.0, size.height * -0.05), // Adjust position
//       size.width * 0.8, // Increase circle radius
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
