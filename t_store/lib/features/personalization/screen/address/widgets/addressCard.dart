import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key, required this.selected});

  final bool selected;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return RoundedContainer(
      showBorder: true,
      width: double.infinity,
      padding: EdgeInsets.all(TSizes.defaultSpace),
      backgroundColor:
          selected ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selected
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.defaultSpace),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              selected ? Iconsax.tick_circle5 : null,
              color: selected
                  ? dark
                      ? TColors.light
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daniel Tilahun",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              Text(
                "(+251) 908 657 008",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              Text(
                "123 Main Street, Cityville, State, ZIP Code, Country",
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
