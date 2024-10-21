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
          painter: OvalPainter(),
          child: Container(),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                appText.onbText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 33,
                  wordSpacing: 1.5,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildButton(
                  onpressed: () {},
                  title: 'Login',
                ),
                const Spacer(),
                BuildButton(
                  onpressed: () {},
                  title: 'Sign Up',
                  borderColor: AppColors.secondary,
                ),
              ],
            ),
          ),
        ),
        const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: BottomBar(),
            )),
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

class BottomBar extends StatelessWidget {
  final bool showCopyRight;
  const BottomBar({
    super.key,
    this.showCopyRight = false,
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
        const Hspacing(height: 15),
        Row(
          children: [
            SvgIcon(iconName: appIcons.copyR, onPressed: () {}),
            Text(
              'Copyright@sumysan2023',
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class OvalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.secondary
      ..style = PaintingStyle.fill;

    // Define the rectangle that will bound the oval
    Rect ovalRect = Rect.fromLTWH(
      size.width * 0.2, // Adjust horizontal position
      size.height * 0.1, // Adjust vertical position
      size.width * 0.8, // Set width of the oval
      size.height * 0.5, // Set height of the oval
    );

    // Draw the oval
    canvas.drawOval(ovalRect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
