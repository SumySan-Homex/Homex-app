import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/constants/styles.dart';
import 'package:homex/core/widgets/widget.dart';
import 'package:homex/features/app/presentation/pages/message/chat_screen.dart';

import '../../../../../core/constants/constants.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: const EdgeInsets.only(
            top: kToolbarHeight,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Message',
                      style:
                          AppStyles.bold27.copyWith(color: AppColors.cB4DFA1),
                    ),
                    Container(
                      height: 50.h,
                      width: 50.w,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: SizedBox(
                        child: SvgPicture.asset(
                          appIcons.searchome,
                          colorFilter: ColorFilter.mode(
                            AppColors.cB4DFA1,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Hspacing(height: 35.h),
              Expanded(
                child: Container(
                  // height: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.cBEBEBE,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      separatorBuilder: (context, index) {
                        return const Hspacing(height: 15);
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 20.h,
                            left: 8.w,
                            right: 8.w,
                          ),
                          child: InkWell(
                            onTap: () {
                              goTo(
                                context: context,
                                newScreen: const ChatScreen(),
                              );
                            },
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 80.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      )),
                                  child: Center(
                                    child: Text('SB',
                                        style: AppStyles.bold27.copyWith(
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                const Wspacing(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sumy Bot',
                                        style: AppStyles.bold27
                                            .copyWith(fontSize: 25.sp),
                                      ),
                                      Text(
                                        'Hi Happy!  We have messaging built in so you  can chat about homes you see ....',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        child,
      ],
    );
  }
}
