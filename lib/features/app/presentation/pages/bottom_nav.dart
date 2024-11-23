import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homex/core/constants/color.dart';

class NavBar extends StatelessWidget {
  final Function(int) onpressed;
  final int selectedIndex;
  NavBar({super.key, required this.onpressed, required this.selectedIndex});

  final List<String> icons = [
    'assets/icons/bottom_nav/search.svg',
    'assets/icons/bottom_nav/manager.svg',
    'assets/icons/bottom_nav/explore.svg',
    'assets/icons/bottom_nav/message.svg',
    'assets/icons/bottom_nav/menu.svg',
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Search',
      'Managers',
      'Explore',
      'Messenger',
      'Menu',
    ];

    return Container(
      height: 96.h,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: const BorderRadius.only(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(5, (index) {
          bool isActive = selectedIndex == index;
          return InkWell(
            onTap: () => onpressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  child: SvgPicture.asset(
                    icons[index],
                    colorFilter: isActive
                        ? ColorFilter.mode(AppColors.secondary, BlendMode.srcIn)
                        : null,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  titles[index],
                  style: TextStyle(
                    color: isActive ? AppColors.secondary : Colors.white,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
