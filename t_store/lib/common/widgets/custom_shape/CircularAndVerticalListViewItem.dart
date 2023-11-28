import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CircularAndVerticalListViewItem extends StatelessWidget {
  const CircularAndVerticalListViewItem({
    super.key,
    required this.title,
    required this.image,
    this.onTab,
    this.textColor = TColors.white,
    this.backgroundColor = TColors.white,
  });

  final String title, image;
  final void Function()? onTab;
  final Color textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTab,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: dark ? TColors.black : TColors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? TColors.white : TColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 56,
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: textColor,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
