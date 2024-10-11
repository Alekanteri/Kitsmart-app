import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class MMGridLayout extends StatelessWidget {
  const MMGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth < 678 ? 2 : 3;

    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MMSizes.gridViewSpacing,
        crossAxisSpacing: MMSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
