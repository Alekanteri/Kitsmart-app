import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kitsmart/common/widgets/login_signup/mm_rounded_image.dart';
import 'package:kitsmart/features/shop/controllers/home_controler.dart';
import 'package:get/get.dart';

class MMPromoSlider extends StatelessWidget {
  const MMPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeControler());
    final screenWidth = MediaQuery.of(context).size.width;
    final sliderHeight = screenWidth * 0.5;
    final constainedHeight = sliderHeight.clamp(150.0, 350.0);

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.8,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            aspectRatio: 2,
            autoPlay: true,
            height: constainedHeight,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: banners
              .map((url) => Transform.scale(
                    scale: 0.98, // Adjust the scale factor to fit your needs
                    child: MMRoudedImage(
                        width: double.infinity,
                        height: constainedHeight,
                        applyImageRadius: true,
                        imageUrl: url),
                  ))
              .toList(),
        ),
        // Center(
        //   child: Obx(
        //     () => Row(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         for (int i = 0; i < banners.length; i++)
        //           MMCircularContainer(
        //             width: 20,
        //             height: 4,
        //             margin: const EdgeInsets.only(right: 10),
        //             backgroundColor: controller.carouselCurrentIndex.value == i
        //                 ? MMColors.primaryColor
        //                 : MMColors.grey,
        //           ), // TCircularContainer
        //       ],
        //     ), // Row
        //   ),
        // ) // Obx
      ],
    ); // Column
  }
}
