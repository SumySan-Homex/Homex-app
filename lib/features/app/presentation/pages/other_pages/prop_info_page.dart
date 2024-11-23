import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homex/core/constants/color.dart';
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
      body: Column(
        children: [
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
              // fontFamily: 'Segoe'
            ),
          )
        ],
      ),
    );
  }
}
