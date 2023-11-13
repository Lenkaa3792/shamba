import 'package:allan_s_application1/core/app_export.dart';
import 'package:allan_s_application1/widgets/custom_checkbox_button.dart';
import 'package:allan_s_application1/widgets/custom_elevated_button.dart';
import 'package:allan_s_application1/widgets/custom_phone_number.dart';
import 'package:allan_s_application1/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('254');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  bool iagreewiththetermsandcondition = false;

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
              horizontal: 27.h,
              vertical: 34.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot20230914246x355,
                  height: 246.v,
                  width: 355.h,
                ),
                SizedBox(height: 27.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 33.h,
                    vertical: 20.v,
                  ),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 42.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: _buildPhoneNumber(context),
                      ),
                      SizedBox(height: 31.v),
                      _buildFirstName(context),
                      SizedBox(height: 30.v),
                      _buildLastName(context),
                      SizedBox(height: 29.v),
                      _buildEmail(context),
                      SizedBox(height: 23.v),
                      _buildPassword(context),
                      SizedBox(height: 35.v),
                      _buildPassword1(context),
                      SizedBox(height: 24.v),
                      _buildIagreewiththetermsandcondition(context),
                      SizedBox(height: 19.v),
                      _buildREGISTER(context),
                      SizedBox(height: 27.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "msg_already_have_an".tr,
                                  style: CustomTextStyles.labelMediumBlack900,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text(
                                  "msg_proceed_to_login_endelea".tr,
                                  style: CustomTextStyles.labelMediumPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPhoneNumber(
        country: selectedCountry,
        controller: phoneNumberController,
        onTap: (Country country) {
          selectedCountry = country;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      child: CustomTextFormField(
        controller: firstNameController,
        hintText: "msg_first_name_jina".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 9.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      child: CustomTextFormField(
        controller: lastNameController,
        hintText: "msg_last_name_jina_la".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 9.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "msg_email_barua_pepe".tr,
        textInputType: TextInputType.emailAddress,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 7.v, 10.h, 6.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgObject16x16,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 30.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 16.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "lbl_password".tr,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 16.h,
      ),
      child: CustomTextFormField(
        controller: passwordController1,
        hintText: "msg_password_confirmation".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 7.v, 14.h, 9.v),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildIagreewiththetermsandcondition(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 27.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "msg_i_agree_with_the".tr,
          value: iagreewiththetermsandcondition,
          onChange: (value) {
            iagreewiththetermsandcondition = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildREGISTER(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_register".tr,
      margin: EdgeInsets.only(
        left: 41.h,
        right: 35.h,
      ),
    );
  }
}
