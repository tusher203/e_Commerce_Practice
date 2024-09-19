import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/product_list_screen.dart';
import '../utility/app_colors.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Get.to(()=>ProductListScreen(catagoryTitle: 'Electronics',),);},
      child: Column(
        children: [
          Card(
            elevation: 0,
            color: AppColors.primaryColor.withOpacity(0.2),
            child:  Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.computer,size:40,color: AppColors.primaryColor,),
                ),

              ],
            ),
          ),
          Text(title,style: const TextStyle(color: AppColors.primaryColor),),
        ],


      ),
    );
  }
}