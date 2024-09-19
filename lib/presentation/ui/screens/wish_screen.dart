import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../state_holders/main_bottom_nav_controller.dart';
import '../widgets/category_items.dart';
import '../widgets/product_card.dart';

class WishScreen extends StatefulWidget {
  const WishScreen({super.key});

  @override
  State<WishScreen> createState() => _WishScreenState();
}

class _WishScreenState extends State<WishScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        Get.find<MainBottomNavController>().backTohome();
      },
      child: Scaffold(
          appBar: AppBar(
            elevation: 5,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Get.find<MainBottomNavController>().backTohome();
                },
                icon: const Icon(Icons.arrow_back_ios)),
            title: const Text(
              "WIsh List",
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.9,
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 4,),
                itemBuilder: (context, index) {
                  return const FittedBox(child: ProductCard());
                }),
          ),),
    );
  }
}
