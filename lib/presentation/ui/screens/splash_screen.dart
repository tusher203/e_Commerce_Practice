import 'package:e_commerce_ostad/app.dart';
import 'package:e_commerce_ostad/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/screens/verify_email_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/app_colors.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GotoNextPage();
    //BottomNavScreen();
  }
  void GotoNextPage()async{
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      Get.offAll(const VerifyEmail());
    });

}
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            const Spacer(),
            Image.asset(AssetsPath.logo,),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 10,),
            Text("Version 0.1",style: TextStyle(color: Colors.grey),),

            SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }
}
