import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screen/login/login.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        // iconTheme: IconThemeData(color: dark ? TColors.white : TColors.black),
        actions: [
          IconButton(
            onPressed: () => {Get.offAll(() => const LoginScreen())},
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6),

            const SizedBox(height: TSizes.spaceBtwItems),

            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwSections),
            // -- Confirm Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(() => const LoginScreen());
                    },
                    child: Text(
                      TTexts.done,
                      style: Theme.of(context).textTheme.labelLarge,
                    ))),

            const SizedBox(height: TSizes.spaceBtwSections),
            // -- Resend Email
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      TTexts.resendEmail,
                      style: Theme.of(context).textTheme.labelLarge,
                    ))),
          ],
        ),
      )),
    );
  }
}
