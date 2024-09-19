import 'package:e_commerce_ostad/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:e_commerce_ostad/presentation/ui/screens/product_list_screen.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/app_colors.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/assets_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../widgets/category_items.dart';
import '../widgets/product_card.dart';
import '../widgets/title_seeall_button.dart';
import '../widgets/home/circle_avatar_icon.dart';
import '../widgets/home/image_carousel.dart';
import 'categories_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarIcon,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 12,
              ),
              const ImageCarousel(),
              const SizedBox(
                height: 12,
              ),
              titleandSeeAll(
                title: "All Categories",
                onTapseeAll: () {
                 Get.find<MainBottomNavController>().changeIndex(1);
                },
              ),
              categoyItemList,
              SizedBox(
                height: 12,
              ),
              titleandSeeAll(
                title: "Popular",
                onTapseeAll: () {Get.to(()=>const ProductListScreen(catagoryTitle: "Product",));},
              ),
              productCardList,
              titleandSeeAll(title: "Special", onTapseeAll: () {}),
              productCardList,
              titleandSeeAll(title: "New", onTapseeAll: () {}),
              productCardList
            ],
          ),
        ),
      ),
    );
  }

  SizedBox get categoyItemList {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CategoryItem(
            title: "Electronics",
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 12,
          );
        },
      ),
    );
  }

  SizedBox get productCardList {
    return SizedBox(
      height: 230,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 12,
          );
        },
      ),
    );
  }

  AppBar get AppbarIcon {
    return AppBar(
      title: Image.asset(AssetsPath.logo_nav),
      actions: [
        const Padding(padding: EdgeInsets.only(right: 8)),
        CircleAvatarIcon(onTap: () {}, icon: Icons.person),
        const SizedBox(
          width: 8,
        ),
        CircleAvatarIcon(onTap: () {}, icon: Icons.phone),
        const SizedBox(
          width: 8,
        ),
        CircleAvatarIcon(onTap: () {}, icon: Icons.notification_add),
        const SizedBox(
          width: 12,
        )
      ],
    );
  }
}
