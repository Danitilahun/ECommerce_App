import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/productReview/widgets/RatingProgressIndicator.dart';

class OverAllProductRating extends StatelessWidget {
  const OverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.5",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(
                value: 1.0,
                text: "5",
              ),
              RatingProgressIndicator(
                value: 0.5,
                text: "4",
              ),
              RatingProgressIndicator(
                value: 0.2,
                text: "3",
              ),
              RatingProgressIndicator(
                value: 0.2,
                text: "2",
              ),
              RatingProgressIndicator(
                value: 0.3,
                text: "1",
              )
            ],
          ),
        )
      ],
    );
  }
}
