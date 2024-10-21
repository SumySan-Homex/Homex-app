import 'package:flutter/material.dart';
import 'package:homex/core/constants/app_text.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/constants/constants.dart';
import 'package:homex/core/widgets/custom_background.dart';
import 'package:homex/core/widgets/spacing.dart';
import 'package:homex/core/widgets/widget.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                appText.onbText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 33,
                  wordSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Hspacing(height: 60),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     BuildButton(
              //       onpressed: () {},
              //       title: 'Login',
              //     ),
              //     const Spacer(),
              //     BuildButton(
              //       onpressed: () {},
              //       title: 'Sign Up',
              //     ),
              //   ],
              // ),
              // const Hspacing(height: 50),
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
              const Hspacing(height: 10),
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
          ),
        ),
      ),
    );
  }
}

class BuildButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String title;
  const BuildButton({
    super.key,
    required this.onpressed,
    required this.title,
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
                side: BorderSide(width: 3, color: AppColors.white))),
        onPressed: onpressed,
        child: Text(
          'Login',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
      ),
    );
  }
}
