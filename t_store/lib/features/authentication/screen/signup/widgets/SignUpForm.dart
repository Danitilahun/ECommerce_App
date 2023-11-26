import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screen/signup/verifyEmail.dart';
import 'package:t_store/features/authentication/screen/signup/widgets/TermAndConditionCheckout.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      Row(
        children: [
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: InputDecoration(
                labelText: TTexts.firstName,
                prefixIcon: Icon(Iconsax.user),
              ),
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.lastName,
                prefixIcon: Icon(Iconsax.user),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: TSizes.spaceBtwInputFields),
      TextFormField(
        decoration: InputDecoration(
          labelText: TTexts.username,
          prefixIcon: Icon(Iconsax.user_edit),
        ),
      ),
      const SizedBox(height: TSizes.spaceBtwInputFields),
      TextFormField(
        decoration: InputDecoration(
          labelText: TTexts.email,
          prefixIcon: Icon(Iconsax.message),
        ),
      ),
      const SizedBox(height: TSizes.spaceBtwInputFields),
      TextFormField(
        decoration: InputDecoration(
          labelText: TTexts.phoneNo,
          prefixIcon: Icon(Iconsax.mobile),
        ),
      ),
      const SizedBox(height: TSizes.spaceBtwInputFields),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.password_check),
          labelText: TTexts.password,
          suffixIcon: Icon(Iconsax.eye_slash),
        ),
      ),

      const SizedBox(height: TSizes.spaceBtwSections),

      // TERMS AND CONDITIONS

      TermAndConditionCheckout(dark: dark),

      const SizedBox(height: TSizes.spaceBtwSections),

      SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Get.to(const VerifyEmail());
              },
              child: const Text(TTexts.createAccount))),
    ]));
  }
}
