import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/text/BrandTitleText.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BrandWithTitleAndVarifiyIcon extends StatelessWidget {
  const BrandWithTitleAndVarifiyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.brandTextSize = TextSizes.small,
    this.textAlign = TextAlign.left,
    this.iconColor = TColors.primary,
  });

  final String title;
  final int maxLines;
  final Color? textColor;
  final TextSizes brandTextSize;
  final TextAlign textAlign;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            maxLines: maxLines,
            textColor: textColor,
            brandTextSize: brandTextSize,
            textAlign: textAlign,
          ),
        ),
        const SizedBox(
          width: TSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          size: TSizes.iconXs,
          color: iconColor,
        )
      ],
    );
  }
}
