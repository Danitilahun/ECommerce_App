import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/cart/cart.dart';
import 'package:t_store/features/shop/screens/cart/widgets/CartItem.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return CartItem(
            showAddRemoveButton: showAddRemoveButton,
          );
        },
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwSections),
        itemCount: 4);
  }
}
