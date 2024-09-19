import 'package:e_commerce_ostad/presentation/ui/utility/assets_path.dart';
import 'package:e_commerce_ostad/presentation/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/app_colors.dart';
import 'otp_verify_screen.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
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
                Text(
                  "Welcome Back",
                  style:Theme.of(context).textTheme.titleLarge
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Please Enter Your Email Address",
                  style:Theme.of(context).textTheme.titleSmall
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email"
                  )
                      ),
            
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
            
                      onPressed: () {
                        Get.to(OTPveifyScreen());
                      },
                      child: const Text("Next"),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
