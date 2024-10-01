import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_2/features/personalization/screens/address/add_new_address.dart';
import 'package:flutter_application_2/features/personalization/screens/address/widgets/single_address.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MMColors.primaryColor2,
        child: const Icon(Iconsax.add, color: MMColors.textWhite),
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
      ),
      appBar: MMAppBar(
        showBackArrow: true,
        title: Text('Адреса'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MMSizes.defaultSpace),
          child: Column(
            children: [
              MMSingleAddress(selectedAddress: false),
              MMSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}