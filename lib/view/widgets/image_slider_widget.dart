import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_app/controller/images/images.dart';

class ImageSliderWidget extends StatelessWidget {
  const ImageSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 16 / 9,
      ),
      items: imgList
          .map((item) => Center(
              child: Image.asset(item,
                  fit: BoxFit.fill, height: 180, width: double.infinity)))
          .toList(),
    );
  }
}
