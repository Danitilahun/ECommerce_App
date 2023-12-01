import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/chips/choiceChips.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/text/ProductPrice.dart';
import 'package:t_store/common/widgets/text/productTitle.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        RoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(children: [
            Row(
              children: [
                SectionHeader(
                  title: "Variations",
                  showButton: false,
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ProductTitle(
                          title: "Prices",
                        ),
                        SizedBox(
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
                          // isLarge: true,
                        )
                      ],
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
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            ProductTitle(
              title:
                  "Step into sophistication and style with our latest shoe variant. Elevate your fashion game with enhanced comfort and trendsetting design. Redefine your stride with this must-have footwear variation.",
              maxLines: 4,
              smallSize: true,
            )
          ]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(
              title: "Colors",
              showButton: false,
            ),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChips(
                  selected: false,
                  text: "Green",
                  onSelected: (value) {},
                ),
                CustomChoiceChips(
                  selected: false,
                  text: "Blue",
                  onSelected: (value) {},
                ),
                CustomChoiceChips(
                  selected: true,
                  text: "Yellow",
                  onSelected: (value) {},
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(
              title: "Size",
              showButton: false,
            ),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChips(
                  selected: false,
                  text: "EU 34",
                  onSelected: (value) {},
                ),
                CustomChoiceChips(
                  selected: true,
                  text: "EU 36",
                  onSelected: (value) {},
                ),
                CustomChoiceChips(
                  selected: false,
                  text: "EU 38",
                  onSelected: (value) {},
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
