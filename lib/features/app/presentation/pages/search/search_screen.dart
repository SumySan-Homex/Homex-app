import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/constants/constants.dart';
import 'package:homex/core/widgets/spacing.dart';
import 'package:homex/core/widgets/widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: ListView(
        children: [
          SizedBox(
            height: 300.h,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  appImages.house1,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 50.h,
                                width: 50.w,
                                child: Image.asset(
                                  appImages.logoS,
                                ),
                              ),
                              const Wspacing(width: 5),
                              Text(
                                'Homex',
                                style: GoogleFonts.crimsonText(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SvgIcon(
                            iconName: appIcons.menu,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Find your home with the \npeople you trust.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(
                        fontSize: 25.0,

                        fontWeight: FontWeight.w700, // Adjust the weight
                        color: Colors.white, // Adjust the color
                      ),
                    ),
                    // CustomTextField(),
                  ],
                )
              ],
            ),
          ),
          const Hspacing(height: 10),
          Padding(
            padding: EdgeInsets.only(
              left: 16.r,
              right: 16.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New to Market',
                  style: GoogleFonts.crimsonText(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.sp,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$70,000',
                          style: GoogleFonts.crimsonText(
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          '6 hours ago',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 174.h,
                            width: double.infinity,
                            child: Image.asset(
                              appImages.house1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 7.h,
                                    width: 7.w,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    ' 3 Beds',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20.sp),
                                  )
                                ],
                              ),
                              const Wspacing(
                                width: 20,
                              ),
                              SvgIcon(
                                iconName: appIcons.heart,
                                onPressed: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Enter text',
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey[100],
            ),
            child: SvgPicture.asset(
              appIcons.mapArrow,
              width: 20,
              height: 20,
            ),
          ),
          suffixIcon: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
            ),
            child: SvgPicture.asset(
              appIcons.searchome,
              width: 20,
              height: 20,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
