import 'package:flutter/material.dart';
import 'package:allan_s_application1/presentation/farmer_profile_screen/farmer_profile_screen.dart';
import 'package:allan_s_application1/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:allan_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:allan_s_application1/presentation/login_screen/login_screen.dart';
import 'package:allan_s_application1/presentation/post_product_page_screen/post_product_page_screen.dart';
import 'package:allan_s_application1/presentation/frame_one_screen/frame_one_screen.dart';
import 'package:allan_s_application1/presentation/frame_one1_screen/frame_one1_screen.dart';
import 'package:allan_s_application1/presentation/frame_screen/frame_screen.dart';
import 'package:allan_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String farmerProfileScreen = '/farmer_profile_screen';

  static const String screenOneScreen = '/screen_one_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String postProductPageScreen = '/post_product_page_screen';

  static const String frameOneScreen = '/frame_one_screen';

  static const String frameOne1Screen = '/frame_one1_screen';

  static const String frameScreen = '/frame_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    farmerProfileScreen: (context) => FarmerProfileScreen(),
    screenOneScreen: (context) => ScreenOneScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    postProductPageScreen: (context) => PostProductPageScreen(),
    frameOneScreen: (context) => FrameOneScreen(),
    frameOne1Screen: (context) => FrameOne1Screen(),
    frameScreen: (context) => FrameScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
