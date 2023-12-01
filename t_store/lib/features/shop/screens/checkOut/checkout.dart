import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/auth/SuccessScreen.dart';
import 'package:t_store/common/widgets/coupon/CouponCode.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/features/shop/screens/cart/widgets/CartItem.dart';
import 'package:t_store/features/shop/screens/cart/widgets/CartItems.dart';
import 'package:t_store/features/shop/screens/checkOut/widgets/BillingAddress.dart';
import 'package:t_store/features/shop/screens/checkOut/widgets/BillingPaymentSystem.dart';
import 'package:t_store/features/shop/screens/checkOut/widgets/PaymentType.dart';
import 'package:t_store/navigationMenu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "CheckOut",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              CartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              CouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              RoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.dark : TColors.white,
                child: Column(children: [
                  BillingAmountSystem(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  PaymentType(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  BillingAddress()
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              () => SuccessScreen(
                text: "Payment Success!",
                image: TImages.successfulPaymentIcon,
                subTitle: "Your item will be shipped soon!",
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              ),
            );
          },
          child: Text("CheckOut \$345"),
        ),
      ),
    );
  }
}
