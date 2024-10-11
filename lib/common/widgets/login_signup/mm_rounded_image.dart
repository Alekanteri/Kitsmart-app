import 'package:flutter/material.dart';
import 'package:kitsmart/utils/constants/sizes.dart';

class MMRoudedImage extends StatelessWidget {
  const MMRoudedImage(
      {super.key,
      this.border,
      this.padding,
      this.onPressed,
      this.width,
      this.height,
      this.applyImageRadius = true,
      required this.imageUrl,
      this.fit = BoxFit.cover,
      this.backgroundColor,
      this.isNetworkImage = false,
      this.borderRdius = MMSizes.md});

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRdius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRdius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRdius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
