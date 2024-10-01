import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_application_2/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/producst_card_vertical.dart';
import 'package:flutter_application_2/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_2/features/shop/screens/all_products/all_products.dart';
import 'package:flutter_application_2/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_application_2/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_application_2/utils/constants/image_strings.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // const MMPrimaryHeaderContainer(
                //     child: Column(
                //   children: [MMAppBar(title: HomeAppBar())],
                // )),
                SizedBox(height: MMSizes.borderRadiusLg),
                Padding(
                    padding: EdgeInsets.only(
                      left: MMSizes.spaceBtwItems,
                    ),
                    child: HomeAppBar()),
                SizedBox(height: MMSizes.spaceBtwItems),
                Padding(
                    padding: EdgeInsets.all(0),
                    child: Column(children: [
                      MMSearchContainer(
                        text: 'Поиск',
                        showBorder: MMHelperFunctions.isDarkMode(context)
                            ? false
                            : false,
                      ),
                      SizedBox(height: MMSizes.spaceBtwItems),
                      const MMPromoSlider(
                        banners: [
                          MMImages.promoBanner1,
                          MMImages.promoBanner2,
                          MMImages.promoBanner3,
                        ],
                      ),
                    ])),
                // Column(
                //   children: [
                //     const SizedBox(height: MMSizes.spaceBtwItems),
                //     SizedBox(
                //       height: 120,
                //       child: ListView.builder(
                //         shrinkWrap: true,
                //         itemCount: 4,
                //         scrollDirection: Axis.horizontal,
                //         itemBuilder: (_, index) {
                //           return const MMHomeCategories();
                //         },
                //       ),
                //     )
                //   ],
                // ),
                Padding(
                    padding: const EdgeInsets.all(MMSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Column(
                        //   children: [
                        //     const MMSectionHeading(
                        //       title: 'Популярные категории',
                        //       showActionButton: false,
                        //       textColor: Color.fromARGB(255, 0, 0, 0),
                        //     ),
                        //     const SizedBox(height: MMSizes.spaceBtwItems),
                        //     SizedBox(
                        //       height: 80,
                        //       child: ListView.builder(
                        //         shrinkWrap: true,
                        //         itemCount: 6,
                        //         scrollDirection: Axis.horizontal,
                        //         itemBuilder: (_, index) {
                        //           return MMVerticalImageText(
                        //             image: MMImages.deliveredEmailIllustration,
                        //             title: 'Shoes',
                        //             onTap: () {},
                        //           );
                        //         },
                        //       ),
                        //     )
                        //   ],
                        // ),
                        MMSectionHeading(
                          title: 'Популярные продукты',
                          onPressed: () =>
                              Get.to(() => const AllProductsScreen()),
                        ),
                        const SizedBox(height: MMSizes.spaceBtwItems),
                        MMGridLayout(
                            itemCount: 10,
                            itemBuilder: (_, index) =>
                                const MMProductCardVertical())
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}