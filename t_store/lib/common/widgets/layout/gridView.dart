import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    this.mainAxisExtent = 288,
    this.itemCount = 4,
    required this.itemBuilder,
  });

  final double mainAxisExtent;
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: TSizes.gridViewSpacing,
            mainAxisSpacing: TSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
