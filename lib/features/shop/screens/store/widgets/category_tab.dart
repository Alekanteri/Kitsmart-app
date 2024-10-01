import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/brand/brand_show_case.dart';
import 'package:flutter_application_2/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/producst_card_vertical.dart';
import 'package:flutter_application_2/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';

class MMCategoryTab extends StatelessWidget {
  const MMCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            children: [
              const MMBrandShowcase(
                images: [
                  MMImages.productImage1,
                  MMImages.productImage1,
                  MMImages.productImage1
                ],
              ),
              const MMBrandShowcase(
                images: [
                  MMImages.productImage1,
                  MMImages.productImage1,
                  MMImages.productImage1
                ],
              ),
              const SizedBox(height: MMSizes.spaceBtwItems),
              MMSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: MMSizes.spaceBtwItems),
              MMGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const MMProductCardVertical()),
              const SizedBox(height: MMSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}