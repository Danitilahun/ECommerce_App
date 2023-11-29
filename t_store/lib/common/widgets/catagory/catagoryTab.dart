import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brandShowCase.dart';
import 'package:t_store/common/widgets/card/verticalProductCard.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/layout/gridView.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CatagoryTab extends StatelessWidget {
  const CatagoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const BrandShowCase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1,
                  ],
                ),
                SectionHeader(
                  title: "You might like",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.defaultSpace,
                ),
                CustomGridView(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return VerticalProductCart();
                    })
              ],
            ),
          ),
        ]);
  }
}
