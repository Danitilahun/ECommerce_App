import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CartCountIcon extends StatelessWidget {
  const CartCountIcon({
    super.key,
    this.iconColor = TColors.black,
    this.backgroundColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
            top: 1,
            right: 1,
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: dark ? TColors.white : TColors.black,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: Text(
                '0',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.primary, fontSizeFactor: 0.8),
              )),
            ))
      ],
    );
  }
}
