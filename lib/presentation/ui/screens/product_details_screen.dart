import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../utility/app_colors.dart';
import '../widgets/product_details_carosel/product_carousel.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  ValueNotifier<int> _noOfcount = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon:Icon((Icons.arrow_back_ios),),),
          title:const Text('Product Details'),
        ),
        body: Column(
          children: [
            ProductImageCarousel(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Text("Happy New Year Special Deal Save 30%",maxLines:2,style: TextStyle(fontSize:25,fontWeight:FontWeight.bold,color: Colors.black54),)),
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
                      )
                    ],
                  ),
                  Row(

                    children: [

                      Wrap(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Text("4.8",style: TextStyle(fontSize: 20),),
                        ],
                      ),
                      TextButton(onPressed: (){}, child:Text("Reviews",style: TextStyle(fontSize:20,color: AppColors.primaryColor),),),
                      Card(

                        color: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.favorite_outline,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      );
  }
}
