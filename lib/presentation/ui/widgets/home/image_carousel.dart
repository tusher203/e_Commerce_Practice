import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key, this.height});

  final height;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(

              onPageChanged: (index, reason) {
                _currentIndex.value = index;
              },
              autoPlay: true,
              ///how many carousel show on screen
              viewportFraction: 1,
              height: widget.height ?? 100.0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 1.0),
                  decoration:
                      const BoxDecoration(color: AppColors.primaryColor),
                  child: Image.asset("assets/images/shoes.jpg"),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 12,),
        ValueListenableBuilder(
          valueListenable: _currentIndex,
          builder: (context, index, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    margin: EdgeInsets.only(right:4),
                    height: 14,width: 14,
                    decoration: BoxDecoration(
                        color: i == index
                            ? AppColors.primaryColor
                            : Colors.white,
                        border: Border.all(
                            color: i == index
                            ? AppColors.primaryColor
                            : Colors.grey),
                    
                    borderRadius: BorderRadius.circular(12)),
                  )
              ],
            );
          },
        )
      ],
    );
  }
}
