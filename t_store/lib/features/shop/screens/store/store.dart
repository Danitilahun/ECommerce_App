import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/custom_shape/CustomSearchBar.dart';
import 'package:t_store/common/widgets/custom_shape/RoundedCntainer.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/image/CircularImage.dart';
import 'package:t_store/common/widgets/layout/gridView.dart';
import 'package:t_store/common/widgets/productCart/CartCountIcon.dart';
import 'package:t_store/common/widgets/text/BrandTitleText.dart';
import 'package:t_store/common/widgets/text/BrandWithTitleAndVarifyIcon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCountIcon(
            onPressed: () {},
            iconColor: dark ? TColors.white : TColors.dark,
            backgroundColor: dark ? TColors.white : TColors.dark,
          ),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      CustomSearchBar(
                        text: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      SectionHeader(
                        title: "Featured Brands",
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      CustomGridView(
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: RoundedContainer(
                                padding: const EdgeInsets.all(TSizes.sm),
                                backgroundColor: Colors.transparent,
                                showBorder: true,
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: CircularImage(
                                        dark: dark,
                                        image: TImages.clothIcon,
                                        backgroundColor: Colors.transparent,
                                        Overlaycolor:
                                            dark ? TColors.white : TColors.dark,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems / 2,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          BrandWithTitleAndVarifiyIcon(
                                            title: "Nike",
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            "234 Products refefergggggggggggggggggggg",
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
