import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/cart/ProductQuantityWithRemoveButton.dart';
import 'package:t_store/common/widgets/cart/cart.dart';
import 'package:t_store/common/widgets/text/ProductPrice.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleCartItem(),
        if (showAddRemoveButton)
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
        if (showAddRemoveButton)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  ProductQuantityWithRemoveButton(),
                ],
              ),
              ProductPrice(
                price: "34",
              )
            ],
          )
      ],
    );
  }
}
