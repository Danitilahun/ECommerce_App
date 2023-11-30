import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/custom_shape/CurvedEdgeWidget.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedImage.dart';
import 'package:t_store/common/widgets/icon/CircularIcon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
        child: Container(
      height: 300,
      color: dark ? TColors.darkerGrey : TColors.light,
      child: Stack(
        children: [
          SizedBox(
            height: 400,
            child: Padding(
                padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(TImages.productImage5)),
                )),
          ),
          Positioned(
              bottom: 30,
              right: 0,
              left: TSizes.defaultSpace,
              child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return RoundedImage(
                          width: 80,
                          imageUrl: TImages.productImage4,
                          border: Border.all(color: TColors.primary),
                          backgroundColor: dark ? TColors.dark : TColors.white,
                          padding: const EdgeInsets.all(TSizes.sm),
                        );
                      },
                      separatorBuilder: (_, index) => SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                      itemCount: 6))),
          const CustomAppBar(
            showBackArrow: true,
            actions: [
              CircularIcon(
                icon: Iconsax.heart5,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
