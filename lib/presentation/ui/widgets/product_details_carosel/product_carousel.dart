import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';

class ProductImageCarousel extends StatefulWidget {
  const ProductImageCarousel({super.key, this.height});

  final height;

  @override
  State<ProductImageCarousel> createState() => _ProductImageCarouselState();
}

class _ProductImageCarouselState extends State<ProductImageCarousel> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    _currentIndex.value = index;
                  },
                  autoPlay: true,

                  ///how many carousel show on screen
                  viewportFraction: 1,
                  height: widget.height ?? 150.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      //margin: const EdgeInsets.symmetric(horizontal: 1.0),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Center(child: Text("Text $i",style: TextStyle(fontSize:15,color: Colors.black),)),
                    );
                  },
                );
              }).toList(),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              left: 0,
              child: ValueListenableBuilder(
                valueListenable: _currentIndex,
                builder: (context, index, _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Container(
                          margin: const EdgeInsets.only(right: 4),
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            color:
                                i == index ? AppColors.primaryColor : Colors.white,
                            border: Border.all(
                                color: i == index
                                    ? AppColors.primaryColor
                                    : Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
