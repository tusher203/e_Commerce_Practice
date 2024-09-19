import 'dart:async';

import 'package:e_commerce_ostad/presentation/ui/screens/signup_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/assets_path.dart';
import 'package:e_commerce_ostad/presentation/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utility/app_colors.dart';

class OTPveifyScreen extends StatefulWidget {
  const OTPveifyScreen({super.key});

  @override
  State<OTPveifyScreen> createState() => _OTPveifyScreenState();
}

class _OTPveifyScreenState extends State<OTPveifyScreen> {
  int count=120;
  void sendTimer(){
Timer.periodic(Duration(seconds:1), (timer){
  setState(() {

    if(count>0){
      count--;
    }
  });
});


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                AppLogo(
                  width: 100,
                ),
                Text("Enter OTP Code",
                    style: Theme.of(context).textTheme.titleLarge),
                SizedBox(
                  height: 12,
                ),
                Text("A 4 digit OTP code has been sent",
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 300,
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        inactiveColor: AppColors.primaryColor),
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: false,
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                    appContext: context,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(SignUpScreen());
                      },
                      child: const Text("Next"),
                    ),),
                SizedBox(
                  height:12,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(text: "This Code will Expire in "),
                      TextSpan(
                          text: "${count} s",
                          style: TextStyle(color: AppColors.primaryColor))
                    ],
                  ),
                ),
                SizedBox(height:20,),
                TextButton(
                  onPressed: () {
                    sendTimer();
                  },
                  child: Text("Resend Code"),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
