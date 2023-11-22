import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/spacingStyle.dart';
import 'package:t_store/features/authentication/screen/login/widgets/FormDivider.dart';
import 'package:t_store/features/authentication/screen/login/widgets/LoginForm.dart';
import 'package:t_store/features/authentication/screen/login/widgets/LoginHeader.dart';
import 'package:t_store/features/authentication/screen/login/widgets/LoginSocialButton.dart';
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
            LoginHeader(dark: dark),

            // -- Login Form
            LoginForm(),

            // -- Form divider
            FormDivider(
              dark: dark,
              text: TTexts.orSignInWith,
            ),

            const SizedBox(height: TSizes.spaceBtwSections),
            // -- Social Login Buttons
            LoginSocialButton()
          ],
        ),
      ),
    ));
  }
}
