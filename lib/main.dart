import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:touch_me/views/categorySelect_view.dart';
import 'package:touch_me/views/onboard1_view.dart';
import 'package:touch_me/views/signUp_view.dart';

import 'views/customerHome_view.dart';
import 'views/locationaccess_view.dart';
import 'views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Touch Me',
      //home: OnboardingPage(),
      home: CustomerhomeViewPage(),
    );
  }
}
