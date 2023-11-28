import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shape/CircularAndVerticalListViewItem.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class HomeCatagories extends StatelessWidget {
  const HomeCatagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CircularAndVerticalListViewItem(
            title: "Shoes catagories",
            image: TImages.shoeIcon,
            onTab: () {},
          );
        },
      ),
    );
  }
}
