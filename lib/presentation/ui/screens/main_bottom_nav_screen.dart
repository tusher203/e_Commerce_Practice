import 'package:e_commerce_ostad/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:e_commerce_ostad/presentation/ui/screens/cart_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/screens/categories_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/screens/home_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/screens/wish_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  ///int _currentIndex = 0;
  List<Widget> bottomItems = [
    HomeScreen(),
    const CategoriesScreen(),
    CartScreen(),
    WishScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(

      builder: (controller) {
        return Scaffold(
          body: bottomItems[controller.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentIndex,
              onTap: (index) {
                // setState(() {
                //   _currentIndex = index;
                // });
                controller.changeIndex(index);
              },
              backgroundColor: Colors.grey,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard), label: "Categories"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.card_giftcard), label: "Wish"),
              ]),
        );
      }
    );
  }
}
