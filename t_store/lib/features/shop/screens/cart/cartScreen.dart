import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/cart/ProductQuantityWithRemoveButton.dart';
import 'package:t_store/common/widgets/cart/cart.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedImage.dart';
import 'package:t_store/common/widgets/icon/CircularIcon.dart';
import 'package:t_store/common/widgets/text/BrandWithTitleAndVarifyIcon.dart';
import 'package:t_store/common/widgets/text/ProductPrice.dart';
import 'package:t_store/common/widgets/text/productTitle.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    CartItem(),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 70,
                            ),
                            ProductQuantityWithRemoveButton(),
                          ],
                        ),
                        ProductPrice(
                          price: "34",
                        )
                      ],
                    )
                  ],
                );
              },
              separatorBuilder: (_, __) =>
                  const SizedBox(height: TSizes.spaceBtwSections),
              itemCount: 4),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () {}, child: Text("CheckOut \$345")),
      ),
    );
  }
}
