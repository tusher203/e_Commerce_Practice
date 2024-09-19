import 'package:e_commerce_ostad/presentation/ui/utility/assets_path.dart';
import 'package:e_commerce_ostad/presentation/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/app_colors.dart';
import 'main_bottom_nav_screen.dart';
import 'otp_verify_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  height: 100,
                ),
                AppLogo(
                  width: 100,
                ),
                Text(
                  "Complete Profile",
                  style:Theme.of(context).textTheme.titleLarge
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Get started with us with your details",
                  style:Theme.of(context).textTheme.titleSmall
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "First Name"
                  )
                      ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Last Name"
                  )
                      ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    decoration: InputDecoration(
                        hintText: "Mobile"
                    )
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    decoration: InputDecoration(
                        hintText: "City"
                    )
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  maxLines: 5,
                    decoration: InputDecoration(
                        hintText: "Shipping Address"
                    )
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
            
                      onPressed: () {
                       Get.offAll(BottomNavScreen());
                      },
                      child: const Text("Complete"),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
