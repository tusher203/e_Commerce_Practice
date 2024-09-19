
import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../../utility/app_colors.dart';
import '../../utility/assets_path.dart';

class ProductItemsList extends StatefulWidget {
  const ProductItemsList({super.key});

  @override
  State<ProductItemsList> createState() => _ProductItemsListState();
}

class _ProductItemsListState extends State<ProductItemsList> {
  ValueNotifier<int> _noOfcount = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(

        elevation: 3,
        child: Row(
          children: [
            Image.asset(
              AssetsPath.shoeImage2,
              width: 130,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "New Year Special Shoe .............", maxLines: 2,
                        overflow: TextOverflow.ellipsis,),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete))
                    ],
                  ),
                  const Row(
                    children: [
                      Text("Color:red"),
                      Text("Size:X"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("\$100", style: TextStyle(
                        color: AppColors.primaryColor, fontSize: 25,),),

                      ///SAME WORK BT DIFFERENT WAY(COUNTER)
                      ValueListenableBuilder(
                        valueListenable: _noOfcount,
                        builder: (context, value, _) {
                          return ItemCount(
                            initialValue: value,
                            minValue: 0,
                            maxValue: 10,
                            decimalPlaces: 1,
                            color: AppColors.primaryColor,
                            onChanged: (v) {
                              // Handle counter value changes
                              _noOfcount.value = v.toInt();
                            },
                          );
                        },
                      ),
                      // ValueListenableBuilder(
                      //   valueListenable: _noOfcount,
                      //   builder: (context, count, _) {
                      //     return Row(
                      //       children: [
                      //         ElevatedButton(
                      //           onPressed: () {
                      //             _decrement();
                      //           },
                      //           child: const Icon(Icons.remove),
                      //         ),
                      //         Text('$count'),
                      //         ElevatedButton(
                      //           onPressed: () {
                      //             _increament();
                      //           },
                      //           child: const Icon(Icons.add),
                      //         ),
                      //       ],
                      //     );
                      //   },
                      // )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}