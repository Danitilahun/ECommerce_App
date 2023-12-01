import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class PaymentType extends StatelessWidget {
  const PaymentType({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeader(
          title: "Payment Method",
          buttonText: "Change",
          onPressed: () {},
        ),
        const SizedBox(
          height: TSizes.defaultSpace / 2,
        ),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 60,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: EdgeInsets.all(TSizes.md),
              child: Image(
                image: AssetImage(TImages.paypal),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: TSizes.defaultSpace / 2,
            ),
            Text(
              "Paypal",
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}
