import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacingStyle.dart';
import 'package:t_store/common/widgets/form/FormDivider.dart';
import 'package:t_store/features/authentication/screen/login/widgets/LoginForm.dart';
import 'package:t_store/features/authentication/screen/login/widgets/LoginHeader.dart';
import 'package:t_store/common/widgets/auth/LoginSocialButton.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // -- Login Header
            LoginHeader(dark: dark),
            // -- Login Form
            const LoginForm(),
            // -- Form divider
            FormDivider(
              dark: dark,
              text: TTexts.orSignInWith,
            ),
            // -- Space between sections
            const SizedBox(height: TSizes.spaceBtwSections),
            // -- Social Login Buttons
            const SocialButton()
          ],
        ),
      ),
    ));
  }
}
