import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homex/core/constants/color.dart';
import 'package:homex/core/constants/styles.dart';
import 'package:homex/core/widgets/widget.dart';
import 'package:homex/features/app/presentation/pages/message/message.dart';

import '../../../../../core/constants/constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: kToolbarHeight,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgIcon(iconName: appIcons.backIcon, onPressed: () {}),
                      SvgIcon(iconName: appIcons.call, onPressed: () {})
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        Text(
                          'Sumy Bot',
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: ListView.separated(
                              padding: EdgeInsets.zero,
                              itemCount: 10,
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 15.h),
                              itemBuilder: (context, index) {
                                bool isSender = index % 2 == 0;
                                return Row(
                                  mainAxisAlignment: isSender
                                      ? MainAxisAlignment.start
                                      : MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: AppColors.primary,
                                        borderRadius: isSender
                                            ? const BorderRadius.only(
                                                topLeft: Radius.circular(50),
                                                topRight: Radius.circular(50),
                                                bottomRight:
                                                    Radius.circular(50),
                                              )
                                            : const BorderRadius.only(
                                                topLeft: Radius.circular(50),
                                                topRight: Radius.circular(50),
                                                bottomLeft: Radius.circular(50),
                                              ),
                                      ),
                                      child: Text(
                                        'Hi Happy!  We have messaging built in so you  can chat about homes you see ....',
                                        style: TextStyle(
                                          color: AppColors.cB4DFA1,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        const Hspacing(height: 10),
                        const BottomTextField()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: kToolbarHeight + 20,
              left: 0,
              right: 0,
              child: Container(
                width: 106.w,
                height: 106.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Text('SB',
                      style: AppStyles.bold27.copyWith(
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomTextField extends StatelessWidget {
  const BottomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            // TextField with rounded corners and background
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200, // Background color
                  hintText: 'Type your message....',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50), // Rounded border
                    borderSide: BorderSide.none, // No border line
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            // Send button
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 24,
              child: IconButton(
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Add send functionality
                },
              ),
            ),
            SizedBox(width: 8),
            // Add button
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 24,
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Add functionality
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
