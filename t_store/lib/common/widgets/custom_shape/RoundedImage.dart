import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    this.onPressed,
    this.isNetworkImage = false,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor = TColors.light,
    this.border,
    this.applyBorderRadius = true,
    this.padding,
    this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final VoidCallback? onPressed;
  final bool isNetworkImage;
  final String imageUrl;
  final BoxFit? fit;
  final Color? backgroundColor;
  final BoxBorder? border;
  final bool applyBorderRadius;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            color: (dark ? TColors.dark : TColors.light),
            border: border,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyBorderRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
