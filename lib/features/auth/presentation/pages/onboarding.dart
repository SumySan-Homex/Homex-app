import 'package:flutter/material.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/constants/constants.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 160,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: AppColors.secondary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(width: 3, color: AppColors.white))),
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
