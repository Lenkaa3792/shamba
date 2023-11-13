import 'package:allan_s_application1/core/app_export.dart';
import 'package:allan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.controller,
  }) : super(
          key: key,
        );

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              right: 6.h,
              bottom: 6.v,
            ),
            child: CustomTextFormField(
              width: 171.h,
              controller: controller,
              hintText: "msg_enter_phone_number".tr,
              textInputType: TextInputType.phone,
            ),
          ),
        ),
      ],
    );
  }
}
