import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/authentication/controllers.onboarding/onboarding.controllers.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';
import 'package:flutter_application_2/utils/device/device_utility.dart';
import 'package:flutter_application_2/utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MMHelperFunctions.isDarkMode(context);
    return Positioned(
        right: MMSizes.defaultSpace,
        bottom: MMDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  dark ? MMColors.primaryColor2 : MMColors.primaryColor2,
              padding: const EdgeInsets.all(25),
              side: const BorderSide(color: Color.fromARGB(0, 244, 67, 54)),
            ),
            child: const Text('Продолжить')));
  }
}