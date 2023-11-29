import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_shape/CircularContainer.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedImage.dart';
import 'package:t_store/features/shop/controllers/homeController.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class PromotionSlider extends StatelessWidget {
  const PromotionSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners
                .map((url) => RoundedImage(
                      imageUrl: url,
                    ))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                controller.updateCarousalIndex(index);
              },
            )),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.CarousalcurrentIndex.value == i
                        ? TColors.primary
                        : TColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
