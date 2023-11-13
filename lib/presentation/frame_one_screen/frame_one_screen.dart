import 'package:allan_s_application1/core/app_export.dart';
import 'package:allan_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:allan_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:allan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:allan_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class FrameOneScreen extends StatelessWidget {
  FrameOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
              children: [
                _buildAppBar(context),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 49.h,
                    right: 51.h,
                  ),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "msg_search_crop_market".tr,
                  ),
                ),
                Spacer(
                  flex: 22,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 17.v,
                  width: 11.h,
                ),
                Spacer(
                  flex: 77,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 82.v,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgObject,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 36.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgObject29x29,
          margin: EdgeInsets.fromLTRB(28.h, 16.v, 28.h, 37.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
