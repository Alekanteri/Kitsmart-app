import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/common/widgets/producst/cart/add_remove_button.dart';
import 'package:flutter_application_2/common/widgets/producst/cart/cart_items.dart';
import 'package:flutter_application_2/common/widgets/producst/product_cards/product_price_text.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  get showAddRemoveButtons => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MMAppBar(
        title: Text('Корзина'),
        showBackArrow: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(MMSizes.defaultSpace),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, __) => Column(
                    children: const [
                      MMCartItems(),
                      SizedBox(height: MMSizes.spaceBtwItems),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              MMProductQuantityWithAddRemoveButton(),
                            ],
                          ),
                          MMProductPriceText(
                            price: '255',
                          )
                        ],
                      )
                    ],
                  ),
              separatorBuilder: (_, __) =>
                  const SizedBox(height: MMSizes.spaceBtwSections),
              itemCount: 2)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MMSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Checkout 354 4567 ₽')),
      ),
    );
  }
}