import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/constants/constants.dart';
import 'package:homex/core/widgets/widget.dart';

class Search2Screen extends StatefulWidget {
  const Search2Screen({super.key});

  @override
  State<Search2Screen> createState() => _Search2ScreenState();
}

class _Search2ScreenState extends State<Search2Screen> {
  String selectedOption = 'BUY';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Column(
        children: [
          const Hspacing(height: kToolbarHeight),
          Center(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Wspacing(width: 10),
                      Text(
                        'Canada, USA',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 24.sp,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 18),
                    height: 50.h,
                    width: 260.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Canada, USA',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                  color: AppColors.secondary,
                                ),
                              ),
                              child: SvgIcon(
                                iconName: appIcons.filter,
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                  color: AppColors.secondary,
                                ),
                              ),
                              child: SvgIcon(
                                iconName: appIcons.searchFilter,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Hspacing(height: 15),
                ],
              ),
            ),
          ),
          const Hspacing(height: 15),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildToggleButton('BUY'),
                  SizedBox(width: 8.w),
                  _buildToggleButton('RENT'),
                ],
              ),
            ),
          ),
          const Hspacing(height: 1),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(color: AppColors.primary),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryItem(appIcons.all, 'All'),
                  _buildCategoryItem(appIcons.house, 'House'),
                  _buildCategoryItem(appIcons.apartment, 'Apartment'),
                  _buildCategoryItem(appIcons.shortlet, 'Shortlet'),
                  _buildCategoryItem(appIcons.building, 'Building'),
                  _buildCategoryItem(appIcons.shared, 'Shared'),
                  _buildCategoryItem(appIcons.land, 'Land'),
                  _buildCategoryItem(appIcons.office, 'Office'),
                  _buildCategoryItem(appIcons.condo, 'Condo'),
                  _buildCategoryItem(appIcons.timeline, 'TownHouse'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _buildMapButton(Icons.macro_off),
    );
  }

  Widget _buildToggleButton(String text) {
    bool isActive = selectedOption == text;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = text;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isActive ? AppColors.secondary : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String icon, String label) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset(
              icon,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          const Hspacing(height: 4),
          Center(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMapButton(IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(24.w),
          decoration:
              BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
          child: SvgIcon(iconName: appIcons.locate, onPressed: () {}),
        ),
        const Hspacing(height: 20),
        Container(
          padding: EdgeInsets.all(20.w),
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: SvgIcon(iconName: appIcons.gps, onPressed: () {}),
        )
      ],
    );
  }
}
