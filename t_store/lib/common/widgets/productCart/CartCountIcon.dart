import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';

class CartCountIcon extends StatelessWidget {
  const CartCountIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
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
                  color: TColors.black,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: Text(
                '0',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white, fontSizeFactor: 0.8),
              )),
            ))
      ],
    );
  }
}
