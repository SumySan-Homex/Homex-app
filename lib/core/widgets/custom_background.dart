import 'package:flutter/material.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/widgets/widget.dart';

import '../../features/auth/presentation/pages/onboarding.dart';
import '../constants/constants.dart';

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
          painter: CirclePainter(),
          child: Container(),
        ),
      ],
    );
  }
}

class BottomBar extends StatelessWidget {
  final bool showCopyRight;
  const BottomBar({
    super.key,
    this.showCopyRight = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgIcon(iconName: appIcons.faq, onPressed: () {}),
            Text(
              'F.A.Q',
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
            const Spacer(),
            SvgIcon(iconName: appIcons.contact, onPressed: () {}),
            Text(
              'Contact Us!!',
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
          ],
        ),
        showCopyRight ? const Hspacing(height: 15) : const SizedBox.shrink(),
        showCopyRight
            ? Row(
                children: [
                  SvgIcon(iconName: appIcons.copyR, onPressed: () {}),
                  const Wspacing(width: 5),
                  Text(
                    'Copyright@sumysan2023',
                    style: TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(
      Rect.fromCircle(
        center: Offset(
          size.width / 2,
          size.height / 2,
        ),
        radius: size.width / 1.5,
      ),
      Paint()..color = Colors.green,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
