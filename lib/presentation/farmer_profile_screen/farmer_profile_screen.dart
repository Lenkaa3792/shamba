import 'package:allan_s_application1/core/app_export.dart';
import 'package:allan_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:allan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:allan_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:allan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:allan_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FarmerProfileScreen extends StatelessWidget {
  const FarmerProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 217.v,
                width: 222.h,
                margin: EdgeInsets.only(left: 74.h),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1,
                      height: 207.v,
                      width: 222.h,
                      radius: BorderRadius.circular(
                        111.h,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage11,
                      height: 41.v,
                      width: 59.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 3.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                width: 81.h,
                margin: EdgeInsets.only(left: 147.h),
                child: Text(
                  "msg_allan_lenkaa_nairobi_kenya".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 54.v),
              _buildThirtyTwo(context),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  right: 108.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildVIEWBUY(context),
                    _buildVIEWBUY1(context),
                  ],
                ),
              ),
              Spacer(
                flex: 55,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 108.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildVIEWBUY2(context),
                    _buildVIEWBUY3(context),
                  ],
                ),
              ),
              Spacer(
                flex: 44,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgObject,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 24.v,
          bottom: 74.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_my_profile".tr,
        margin: EdgeInsets.only(left: 119.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgObject29x29,
          margin: EdgeInsets.fromLTRB(28.h, 24.v, 28.h, 75.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 127.v,
            width: 165.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage15,
            height: 127.v,
            width: 177.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVIEWBUY(BuildContext context) {
    return CustomElevatedButton(
      width: 90.h,
      text: "lbl_view_buy".tr,
    );
  }

  /// Section Widget
  Widget _buildVIEWBUY1(BuildContext context) {
    return CustomElevatedButton(
      width: 90.h,
      text: "lbl_view_buy".tr,
    );
  }

  /// Section Widget
  Widget _buildVIEWBUY2(BuildContext context) {
    return CustomElevatedButton(
      width: 90.h,
      text: "lbl_view_buy".tr,
      margin: EdgeInsets.only(top: 10.v),
    );
  }

  /// Section Widget
  Widget _buildVIEWBUY3(BuildContext context) {
    return CustomElevatedButton(
      width: 90.h,
      text: "lbl_view_buy".tr,
      margin: EdgeInsets.only(bottom: 10.v),
    );
  }
}
