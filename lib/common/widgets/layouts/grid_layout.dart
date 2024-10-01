import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class MMGridLayout extends StatelessWidget {
  const MMGridLayout({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  }) : super(key: key);

  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MMSizes.gridViewSpacing,
        crossAxisSpacing: MMSizes.gridViewSpacing,
      ), // SliverGridDelegateWithFixedCrossAxisCount
      itemBuilder: itemBuilder,
    ); // GridView.builder
  }
}