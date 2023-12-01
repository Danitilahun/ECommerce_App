import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/checkOut/widgets/BillType.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BillingAmountSystem extends StatelessWidget {
  const BillingAmountSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BillType(
          title: "Subtotal",
          value: "\$23.5",
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        BillType(
          title: "Shipping Fee",
          value: "\$8.0",
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        BillType(
          title: "Tax Fee",
          value: "\$2.5",
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        BillType(
          title: "Order Total",
          value: "\$30.3",
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        )
      ],
    );
  }
}
