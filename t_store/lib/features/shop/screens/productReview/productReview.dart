import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/features/shop/screens/productReview/widgets/CustomRatingBarIndicator.dart';
import 'package:t_store/features/shop/screens/productReview/widgets/OverAllProductRating.dart';
import 'package:t_store/features/shop/screens/productReview/widgets/RatingProgressIndicator.dart';
import 'package:t_store/features/shop/screens/productReview/widgets/UserReviewCard.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Experience the assurance of credibility with our verified ratings and reviews, a testament to the genuine quality and authenticity of each product. "),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              OverAllProductRating(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomRatingBarIndicator(
                    rating: 4,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Text(
                    "(12,611 ) Peoples",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
