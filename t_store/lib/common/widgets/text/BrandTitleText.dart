import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    this.textColor,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
    this.brandTextSize = TextSizes.small,
  });

  final Color? textColor;
  final String title;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextSizes? brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(
                color: textColor,
              )
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(
                    color: textColor,
                  )
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(
                        color: textColor,
                      )
                  : Theme.of(context).textTheme.labelMedium!.apply(
                        color: textColor,
                      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
