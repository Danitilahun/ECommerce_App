import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/common/widgets/text/ProductPrice.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class PriceAndSalePrice extends StatelessWidget {
  const PriceAndSalePrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedContainer(
          radius: TSizes.sm,
          backgroundColor: TColors.secondary.withOpacity(0.6),
          padding: const EdgeInsets.symmetric(
            horizontal: TSizes.sm,
            vertical: TSizes.xs,
          ),
          child: Text(
            "25%",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: TColors.black),
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text(
          "\$245",
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .apply(decoration: TextDecoration.lineThrough),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        ProductPrice(
          price: "174",
          isLarge: true,
        )
      ],
    );
  }
}
