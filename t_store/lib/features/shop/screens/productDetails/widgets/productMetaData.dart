import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/common/widgets/image/CircularImage.dart';
import 'package:t_store/common/widgets/text/BrandWithTitleAndVarifyIcon.dart';
import 'package:t_store/common/widgets/text/ProductPrice.dart';
import 'package:t_store/common/widgets/text/productTitle.dart';
import 'package:t_store/features/shop/screens/productDetails/widgets/PriceAndSalePrice.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class PeoductMetaData extends StatelessWidget {
  const PeoductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PriceAndSalePrice(),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),
        ProductTitle(
          title: "Green Nike Sport Shoes",
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            ProductTitle(
              title: "Status",
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 1.5,
            ),
            Text(
              "In Stock",
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            CircularImage(image: TImages.nikeLogo),
            BrandWithTitleAndVarifiyIcon(title: "Nike")
          ],
        )
      ],
    );
  }
}
