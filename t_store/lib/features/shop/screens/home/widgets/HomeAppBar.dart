import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/productCart/CartCountIcon.dart';
import 'package:t_store/features/shop/screens/cart/cartScreen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          TTexts.homeAppbarTitle,
          style: Theme.of(context).textTheme.labelMedium!.apply(
                color: TColors.grey,
              ),
        ),
        Text(
          TTexts.homeAppbarSubTitle,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: TColors.white,
              ),
        )
      ]),
      actions: [
        CartCountIcon(
          iconColor: TColors.white,
          onPressed: () {
            Get.to(const Cart());
          },
        )
      ],
    );
  }
}
