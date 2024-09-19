import 'package:e_commerce_ostad/presentation/ui/widgets/product_details_carosel/product_carousel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/product_details_screen.dart';
import '../utility/app_colors.dart';
import '../utility/assets_path.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(const ProductDetails());
      },
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: 160,
        height: 230,
        child: Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  AssetsPath.shoeImage2,
                  width: 150,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "New Year Special shoe 30",
                      style: TextStyle(
                        fontSize: 12,
      
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
      
                      children: [
                        Text("\$100"),
                        SizedBox(width: 15,),
                        Wrap(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.deepOrange,
                            ),
                            Text("4.8"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Card(
                            color: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}