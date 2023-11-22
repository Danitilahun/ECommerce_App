import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwInputFields),
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
                  onPressed: () {}, child: const Text(TTexts.forgetPassword))
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
                  onPressed: () {}, child: const Text(TTexts.createAccount))),
          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
    ));
  }
}
