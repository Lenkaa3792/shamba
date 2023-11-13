import 'package:allan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameScreen extends StatelessWidget {
  const FrameScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 341.h,
          child: Container(
            width: 328.h,
            margin: EdgeInsets.only(right: 12.h),
            child: Text(
              "msg_certainly_here".tr,
              maxLines: 22,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumPoppins,
            ),
          ),
        ),
      ),
    );
  }
}
