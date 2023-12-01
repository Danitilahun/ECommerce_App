import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/common/widgets/readMore/CustomReadMore.dart';
import 'package:t_store/features/shop/screens/productReview/widgets/CustomRatingBarIndicator.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage2),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                  "Daniel Tilahun",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Row(
          children: [
            CustomRatingBarIndicator(
              rating: 4,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              "12/1/2023",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        CustomReadMore(
            text:
                "This shirt is a standout! The quality is exceptional, the fit is perfect, and the color is even more vibrant in person. I couldn't be happier with my purchase!"),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        RoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "EthioGebeya",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "12/1/2023",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                CustomReadMore(
                  text:
                      "Thank you for your kind words! We're thrilled to hear that the shirt exceeded your expectations. Your satisfaction is our priority, and we're delighted to have provided you with a top-quality product. Should you need anything else, feel free to reach out. Happy shopping!",
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
