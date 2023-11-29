import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/card/verticalProductCard.dart';
import 'package:t_store/common/widgets/custom_shape/CircularAndVerticalListViewItem.dart';
import 'package:t_store/common/widgets/custom_shape/CircularContainer.dart';
import 'package:t_store/common/widgets/custom_shape/CurvedEdgeWidget.dart';
import 'package:t_store/common/widgets/custom_shape/CustomSearchBar.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedImage.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/custom_shape/curved_shapes.dart';
import 'package:t_store/common/widgets/layout/gridView.dart';
import 'package:t_store/common/widgets/productCart/CartCountIcon.dart';
import 'package:t_store/features/shop/controllers/homeController.dart';
import 'package:t_store/features/shop/screens/home/widgets/HomeAppBar.dart';
import 'package:t_store/features/shop/screens/home/widgets/HomeCatagories.dart';
import 'package:t_store/features/shop/screens/home/widgets/PrimaryHeaderComponet.dart';
import 'package:t_store/features/shop/screens/home/widgets/PromotionSlider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const PrimaryHeaderComponet(
            child: Column(
              children: [
                HomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                CustomSearchBar(
                  text: "Search in store",
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      SectionHeader(
                        title: "Popular Categories",
                        showButton: false,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      HomeCatagories(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // body

          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const PromotionSlider(
                  banners: [
                    TImages.banner1,
                    TImages.banner2,
                    TImages.banner3,
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SectionHeader(
                  title: "Popular Products",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                CustomGridView(
                  itemBuilder: (_, index) => const VerticalProductCart(),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
