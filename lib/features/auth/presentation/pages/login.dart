import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homex/features/auth/presentation/pages/onboarding.dart';

import '../../../../core/constants/color.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Hspacing(height: 40),
                  Text(
                    appText.loginText,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 33,
                      wordSpacing: 1.5,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Hspacing(height: 10),
                  Row(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 25.sp,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Register',
                        style: TextStyle(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w600,
                          fontSize: 25.sp,
                          fontFamily: 'Raleway',
                        ),
                      )
                    ],
                  ),
                  const Hspacing(height: 10),
                  Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.34),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  AppTextfield(
                    controller: nameController,
                  ),
                  const Hspacing(height: 10),
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.34),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  AppTextfield(
                    controller: nameController,
                  ),
                  const Hspacing(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.scale(
                          scale: 0.9,
                          child: Checkbox(
                            side: BorderSide(
                              color: AppColors.white,
                            ),
                            value: false,
                            onChanged: (newValue) {},
                          )),
                      const Wspacing(width: 10),
                      Text(
                        'Remeber me',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          fontFamily: 'Raleway',
                          color: AppColors.white,
                        ),
                      )
                    ],
                  ),
                  const Hspacing(height: 15),
                  Center(
                    child: BuildButton(
                      onpressed: () {},
                      title: 'Login',
                      borderColor: AppColors.secondary,
                    ),
                  ),
                  const Hspacing(height: 20),
                  Center(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                        fontFamily: 'Raleway',
                        color: AppColors.white,
                      ),
                    ),
                  )
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
                child: BottomBar(
                  showCopyRight: false,
                ),
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

class AppTextfield extends StatelessWidget {
  final TextEditingController controller;
  const AppTextfield({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: AppColors.white,
        contentPadding: const EdgeInsets.all(16),
      ),
    );
  }
}
