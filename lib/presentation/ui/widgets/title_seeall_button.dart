import 'package:e_commerce_ostad/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class titleandSeeAll extends StatelessWidget {
  const titleandSeeAll({
    super.key,required this.title,required this.onTapseeAll
  });
  final String title;
  final VoidCallback onTapseeAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        TextButton(onPressed: onTapseeAll, child: Text("See All",style: TextStyle(color:AppColors.primaryColor),),),
      ],
    );
  }
}