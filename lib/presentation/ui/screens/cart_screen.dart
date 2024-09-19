import 'package:e_commerce_ostad/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/app_colors.dart';
import 'package:e_commerce_ostad/presentation/ui/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../widgets/product_items_card/product_items_list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  //ValueNotifier<int> _noOfcount = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    // int count = 0;
    // void _increament() {
    //   setState(() {
    //     if ( 10) {
    //       _noOfcount.value++;
    //       return;
    //     }
    //   });
    // }
    //
    // ;
    // void _decrement() {
    //   setState(
    //     () {
    //       _noOfcount.value--;
    //     },
    //   );
    // }

    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        Get.find<MainBottomNavController>().backTohome();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text("Cart"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                  child: Column(
                    children: [

                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: 4,
                            itemBuilder: (context, index) {

                        return ProductItemsList();
                        },
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 12,);
                            },


                        ),
                      ),

                    ],
                  )),
              priceandCheckoutsection
            ],
          ),
        ),
      ),
    );
  }

  Container get priceandCheckoutsection {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Total Price',
                style: TextStyle(color: Colors.black87),
              ),
              Text(
                "\$10000.00",
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ],
          ),
          SizedBox(
              width: 100,
              child: ElevatedButton(onPressed: () {}, child: Text("CheckOut")))
        ],
      ),
    );
  }
}


