import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.Overlaycolor,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    required this.image,
    this.radius = 100,
    this.isNetworkImage = false,
    this.padding = const EdgeInsets.all(TSizes.sm),
  });

  final double? width, height;
  final Color? Overlaycolor, backgroundColor;
  final BoxFit fit;
  final String image;
  final double? radius;
  final bool isNetworkImage;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? TColors.black : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          fit: BoxFit.cover,
          color: Overlaycolor,
        ),
      ),
    );
  }
}
