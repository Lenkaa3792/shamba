import 'package:allan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class PostProductPageScreen extends StatelessWidget {
  const PostProductPageScreen({Key? key})
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
            children: [
              _buildThree(context),
              Spacer(
                flex: 69,
              ),
              Padding(
                padding: EdgeInsets.only(left: 89.h),
                child: Text(
                  "lbl_image_picha".tr,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
              ),
              Spacer(
                flex: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgObject,
            height: 29.adaptSize,
            width: 29.adaptSize,
          ),
          SizedBox(height: 45.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_post_your_product".tr,
              style: CustomTextStyles.bodyMediumAbelOnPrimary,
            ),
          ),
          SizedBox(height: 47.v),
        ],
      ),
    );
  }
}
