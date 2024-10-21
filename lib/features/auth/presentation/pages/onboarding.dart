import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homex/core/constants/app_text.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/constants/constants.dart';
import 'package:homex/core/widgets/custom_background.dart';
import 'package:homex/core/widgets/spacing.dart';
import 'package:homex/core/widgets/widget.dart';
import 'package:homex/features/auth/presentation/pages/login.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ColoredBox(color: AppColors.primary),
          ),
          Align(
            alignment: const Alignment(15, -1.5),
            child: CustomPaint(
              size: Size(405.w, 377.h),
              painter: CirclePainter(),
            ),
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
                    fontWeight: FontWeight.w500,
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
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildButton(
                    onpressed: () {
                      goTo(
                        context: context,
                        newScreen: const LoginScreen(),
                      );
                    },
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
          Positioned(
              left: 0,
              top: 10,
              child: Image.asset(
                appImages.logoS,
              ))
        ],
      ),
    );
  }
}

class BuildButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String title;
  final Color? borderColor;
  const BuildButton({
    super.key,
    required this.onpressed,
    required this.title,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 160,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: AppColors.secondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  width: 3,
                  color: borderColor ?? AppColors.white,
                ))),
        onPressed: onpressed,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
              color: AppColors.white),
        ),
      ),
    );
  }
}
