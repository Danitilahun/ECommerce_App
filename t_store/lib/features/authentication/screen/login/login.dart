import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/spacingStyle.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
                Text(TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(height: TSizes.sm),
                Text(TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),

            // -- Login Form
            Form(
                child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: TSizes.spaceBtwInputFields),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct_right)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),

                  // -- Forgot Password

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(TTexts.rememberMe),
                        ],
                      ),

                      // -- Forgot Password

                      TextButton(
                          onPressed: () {},
                          child: const Text(TTexts.forgetPassword))
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  // -- Login Button

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text(TTexts.signIn))),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(TTexts.createAccount))),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )),

            // -- Social Login

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Divider(
                    color: dark ? TColors.darkGrey : TColors.grey,
                    indent: 60,
                    endIndent: 5,
                    thickness: 0.5,
                  ),
                ),

                // -- Or Sign In With
                Text(TTexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium),

                Flexible(
                  child: Divider(
                    color: dark ? TColors.darkGrey : TColors.grey,
                    indent: 60,
                    endIndent: 5,
                    thickness: 0.5,
                  ),
                )
              ],
            ),

            const SizedBox(height: TSizes.spaceBtwSections),
            // -- Social Login Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: TColors.grey),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage(TImages.google),
                      width: TSizes.iconMd,
                      height: TSizes.iconMd,
                    ),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: TColors.grey),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage(TImages.facebook),
                      width: TSizes.iconMd,
                      height: TSizes.iconMd,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
