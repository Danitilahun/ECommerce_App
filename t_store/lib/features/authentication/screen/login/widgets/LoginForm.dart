import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screen/passwordConfigration/forgetPassword.dart';
import 'package:t_store/features/authentication/screen/signup/signup.dart';
import 'package:t_store/navigationMenu.dart';
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
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwInputFields),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
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
                  onPressed: () {
                    Get.off(const ForgetPassword());
                  },
                  child: const Text(TTexts.forgetPassword))
            ],
          ),

          const SizedBox(height: TSizes.spaceBtwSections),
          // -- Login Button

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(const NavigationMenu());
                  },
                  child: const Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(const SignUp());
                  },
                  child: const Text(TTexts.createAccount))),
          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
    ));
  }
}
