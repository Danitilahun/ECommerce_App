import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/auth/LoginSocialButton.dart';
import 'package:t_store/common/widgets/form/FormDivider.dart';
import 'package:t_store/features/authentication/screen/signup/widgets/SignUpForm.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? TColors.white : TColors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: TSizes.spaceBtwSections),

              //  Form

              SignUpForm(dark: dark),

              const SizedBox(height: TSizes.spaceBtwItems),

              FormDivider(dark: dark, text: TTexts.orSignInWith),

              const SizedBox(height: TSizes.spaceBtwItems),

              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
