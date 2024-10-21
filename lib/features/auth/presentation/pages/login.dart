import 'package:flutter/material.dart';

import '../../../../core/constants/color.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  textAlign: TextAlign.start,
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
