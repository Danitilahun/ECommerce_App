import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/custom_shape/CurvedEdgeWidget.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedImage.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/icon/CircularIcon.dart';
import 'package:t_store/common/widgets/readMore/CustomReadMore.dart';
import 'package:t_store/features/shop/screens/productDetails/widgets/AddToCart.dart';
import 'package:t_store/features/shop/screens/productDetails/widgets/ProductImageSlider.dart';
import 'package:t_store/features/shop/screens/productDetails/widgets/RatingAndShare.dart';
import 'package:t_store/features/shop/screens/productDetails/widgets/productAttribute.dart';
import 'package:t_store/features/shop/screens/productDetails/widgets/productMetaData.dart';
import 'package:t_store/features/shop/screens/productReview/productReview.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(dark: dark),
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  RatingAndShare(),
                  PeoductMetaData(),
                  ProductAttributes(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Checkout")),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SectionHeader(title: "Discription"),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  CustomReadMore(
                    text:
                        'Step into sophistication and style with our latest shoe variant. Elevate your fashion game with enhanced comfort and trendsetting design. Redefine your stride with this must-have footwear variation.',
                  ),
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeader(
                        title: "Reviews(199) ",
                        showButton: false,
                      ),
                      IconButton(
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                        onPressed: () {
                          Get.to(const ProductReview());
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AddToCartButton(),
    );
  }
}
