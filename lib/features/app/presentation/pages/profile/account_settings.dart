// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/widgets/widget.dart';
import 'package:homex/features/auth/presentation/pages/onboarding.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  List<SettingModel> items = [
    SettingModel(
      title: 'Personal Information',
      screen: const Onboard(),
    ),
    SettingModel(
      title: 'Social Media',
      screen: const Onboard(),
    ),
    SettingModel(
      title: 'Realtors',
      screen: const Onboard(),
    ),
    SettingModel(
      title: 'Login & Security',
      screen: const Onboard(),
    ),
    SettingModel(
      title: 'Notification Preferences',
      screen: Onboard(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 90.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: AppColors.c1645ED,
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: Text(
                      'JM',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 42.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Wspacing(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Mark',
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp),
                    ),
                    const Hspacing(height: 10),
                    Text(
                      'JohnMark2gmail.com',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Hspacing(height: 40),
            Column(
              children: List.generate(items.length, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Hspacing(height: 30),
                    Divider(
                      color: AppColors.c393939,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, bottom: 25, left: 10),
                      child: Text(
                        items[index].title,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                    //  const Hspacing(height: 30),
                  ],
                );
              }),
            ),
            const Hspacing(height: 20),
            BuildButton(
              onpressed: () {},
              title: 'Sign Out',
            )
          ],
        ),
      ),
    );
  }
}

class SettingModel {
  final String title;
  final Widget screen;
  SettingModel({
    required this.title,
    required this.screen,
  });
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
      height: 68.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: AppColors.c1645ED,
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
