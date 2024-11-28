import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/constants/constants.dart';
import 'package:homex/core/widgets/widget.dart';

class PropInfoPage extends StatefulWidget {
  const PropInfoPage({super.key});

  @override
  State<PropInfoPage> createState() => _PropInfoPageState();
}

class _PropInfoPageState extends State<PropInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.cB4DFA1,
        ),
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                AppColors.cB4DFA1,
                BlendMode.srcATop,
              ),
              child: Image.asset(
                appImages.logo1,
                height: 50.w,
                width: 50.w,
                fit: BoxFit.cover,
              ),
            ),
            // const Wspacing(width: 5),
            Text(
              'Homex',
              style: GoogleFonts.crimsonText(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                color: AppColors.cB4DFA1,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              appImages.house1,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Estates Appartments And Homes',
                              style: AppStyles.bold27,
                            ),
                            Text(
                              'Bosun Koya St.',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15.sp,
                              ),
                            ),
                            const Hspacing(height: 5),
                            Text(
                              'Canada.. | USA ',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 19.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Wspacing(width: 20),
                      Row(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgIcon(iconName: appIcons.note, onPressed: () {}),
                          const Wspacing(width: 10),
                          SvgIcon(iconName: appIcons.share, onPressed: () {}),
                          const Wspacing(width: 10),
                          SvgIcon(iconName: appIcons.heart2, onPressed: () {}),
                          const Wspacing(width: 5),
                          SvgIcon(
                            iconName: appIcons.more,
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  backgroundColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  isScrollControlled: true,
                                  builder: (context) {
                                    return Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'More Options',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20.h,
                                                ),
                                              ),
                                              const Hspacing(height: 20),
                                            ],
                                          ),
                                          const Hspacing(height: 30),
                                          Row(
                                            children: [
                                              SvgIcon(
                                                  iconName: appIcons.note,
                                                  onPressed: () {}),
                                              Wspacing(width: 20),
                                              Text(
                                                'Driving Directions',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Divider(
                        color: Colors.black.withOpacity(0.5),
                        thickness: 1.0,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '\$20.5k',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.sp,
                                      color: Colors.black
                                      //  fontFamily: 'Segoe'
                                      ),
                                ),
                                Text(
                                  'Rent',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20.sp,
                                    color: AppColors.c090909,
                                    //  fontFamily: 'Segoe'
                                  ),
                                )
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 1.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.sp,
                                      color: Colors.black
                                      //  fontFamily: 'Segoe'
                                      ),
                                ),
                                Text(
                                  'Beds',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20.sp,
                                    color: AppColors.c090909,
                                    //  fontFamily: 'Segoe'
                                  ),
                                )
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 1.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.sp,
                                      color: Colors.black
                                      //  fontFamily: 'Segoe'
                                      ),
                                ),
                                Text(
                                  'Baths',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20.sp,
                                    color: AppColors.c090909,
                                    //  fontFamily: 'Segoe'
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.5),
                        thickness: 1.0,
                      ),
                    ],
                  ),
                  const Hspacing(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Listing Provided by',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          // fontFamily: 'segoe'
                        ),
                      ),
                      Text(
                        'Homex.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          // fontFamily: 'segoe'
                        ),
                      ),
                    ],
                  ),
                  const Hspacing(height: 10),
                  Text(
                    'About The delight Esatate ApartmentsAnd Homes',
                    style: TextStyle(
                      color: Colors.black,
                      // fontFamily: 'Segoe'
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                    ),
                  ),
                  const Hspacing(height: 50),
                  Text(
                    'Located on the corner of Hakeem Dickson Drive in Canada , USA and the Historic Schhuette Bxxxxxxxxxxxxxxx uxurious',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.sp,
                    ),
                  ),
                  const Hspacing(height: 30),
                  SizedBox(
                    height: 60.h,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.secondary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                            10,
                          ))),
                      onPressed: () {},
                      child: Text('Send a Message'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
