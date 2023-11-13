import 'package:allan_s_application1/core/app_export.dart';
import 'package:allan_s_application1/widgets/custom_checkbox_button.dart';
import 'package:allan_s_application1/widgets/custom_elevated_button.dart';
import 'package:allan_s_application1/widgets/custom_phone_number.dart';
import 'package:allan_s_application1/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('254');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememeberme = false;

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 28.h,
              vertical: 46.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTwo(context),
                SizedBox(height: 45.v),
                _buildFour(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
      height: 233.v,
      width: 350.h,
      margin: EdgeInsets.only(left: 1.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 233.v,
            width: 350.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 233.v,
            width: 350.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomPhoneNumber(
      country: selectedCountry,
      controller: phoneNumberController,
      onTap: (Country country) {
        selectedCountry = country;
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "lbl_password".tr,
      hintStyle: CustomTextStyles.labelMediumAbhayaLibreMedium,
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 8.v, 14.h, 7.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgObject14x14,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 30.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildLoginIngia(BuildContext context) {
    return CustomElevatedButton(
      height: 31.v,
      text: "lbl_login_ingia".tr,
      margin: EdgeInsets.only(
        left: 31.h,
        right: 30.h,
      ),
      buttonTextStyle: CustomTextStyles.labelMediumAbhayaLibreMediumGray50,
    );
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: CustomTextFormField(
        controller: passwordController1,
        hintText: "lbl_password".tr,
        hintStyle: CustomTextStyles.labelMediumAbhayaLibreMedium,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 9.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Container(
        height: 433.v,
        width: 371.h,
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 51.h,
                  top: 52.v,
                  right: 49.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildPhoneNumber(context),
                    SizedBox(height: 37.v),
                    _buildPassword(context),
                    SizedBox(height: 24.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          right: 5.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCheckboxButton(
                              text: "lbl_rememeber_me".tr,
                              value: rememeberme,
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              textStyle: CustomTextStyles.labelSmallBlack900,
                              onChange: (value) {
                                rememeberme = value;
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 3.v),
                              child: Text(
                                "msg_forgot_password_nmesahau".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 52.v),
                    _buildLoginIngia(context),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 49.h,
                  vertical: 52.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 2.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTriangle,
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            margin: EdgeInsets.only(
                              top: 10.v,
                              bottom: 9.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: 24.v,
                            width: 36.h,
                            margin: EdgeInsets.only(left: 1.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_254".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: SizedBox(
                              height: 23.v,
                              child: VerticalDivider(
                                width: 2.h,
                                thickness: 2.v,
                                indent: 3.h,
                                endIndent: 3.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 37.v),
                    _buildPassword1(context),
                    SizedBox(height: 37.v),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
