import 'package:e_commerce_ostad/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:e_commerce_ostad/presentation/ui/screens/splash_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_binder.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightThemeData,
      home: const SplashScreen(),
      initialBinding:ControllerBindings(),

    );
  }
}

