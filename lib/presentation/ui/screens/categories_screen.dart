import 'package:e_commerce_ostad/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:e_commerce_ostad/presentation/ui/widgets/category_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop:false,
     onPopInvoked:(value){

       Get.find<MainBottomNavController>().backTohome();
     },
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Get.find<MainBottomNavController>().backTohome();
          }, icon:const Icon(Icons.arrow_back_ios)),
          title: const Text("Categories",style: TextStyle(fontSize:20,color: Colors.black87),),
        ),
        body:  GridView.builder(
            shrinkWrap: true,
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) {
              return const FittedBox(child: CategoryItem(title: "Electronics",));
            })

      ),
    );
  }
}


