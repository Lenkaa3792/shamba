import 'package:allan_s_application1/core/app_export.dart';
import 'package:allan_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ScreenOneScreen extends StatelessWidget {
  const ScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 21.v),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot20230914,
                height: 375.v,
                width: 384.h,
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                height: 65.v,
                width: 216.h,
                text: "msg_click_to_begin_bonyeza".tr,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
