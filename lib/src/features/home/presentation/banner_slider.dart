import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/src/common_widgets/rounded_image.dart';
import 'package:ecommerce_app/src/utils/constants/image_sitrings.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> imageSliders = [
      RoundedImage(imageUrl: KImages.banner1),
      RoundedImage(imageUrl: KImages.banner2),
      RoundedImage(imageUrl: KImages.banner3),
      RoundedImage(imageUrl: KImages.banner4),
    ];

    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
        autoPlayInterval: const Duration(seconds: 8),
      ),
    );
  }
}
