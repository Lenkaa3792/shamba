import 'package:allan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameOne1Screen extends StatelessWidget {
  const FrameOne1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 497.v,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
