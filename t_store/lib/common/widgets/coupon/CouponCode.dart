import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
          bottom: TSizes.sm, top: TSizes.sm, right: TSizes.sm, left: TSizes.md),
      child: Row(children: [
        Flexible(
            child: TextFormField(
          decoration: InputDecoration(
            hintText: "Have a promo code? Enter here",
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        )),
        SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.grey.withOpacity(0.2),
                    side: BorderSide(color: TColors.grey.withOpacity(0.1)),
                    foregroundColor: dark
                        ? TColors.white.withOpacity(0.5)
                        : TColors.dark.withOpacity(0.5)),
                onPressed: () {},
                child: Text("Apply")))
      ]),
    );
  }
}
