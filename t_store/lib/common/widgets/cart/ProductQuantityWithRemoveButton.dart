import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icon/CircularIcon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductQuantityWithRemoveButton extends StatelessWidget {
  const ProductQuantityWithRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          width: 32,
          height: 32,
          size: TSizes.md,
          backgroundColor: dark ? TColors.darkGrey : TColors.light,
          color: dark ? TColors.white : TColors.black,
          icon: Iconsax.minus,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text(
          "2",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        CircularIcon(
          width: 32,
          height: 32,
          size: TSizes.md,
          backgroundColor: TColors.primary,
          color: TColors.white,
          icon: Iconsax.add,
        ),
      ],
    );
  }
}
