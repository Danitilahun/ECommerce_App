import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/appBar/tabBar.dart';
import 'package:t_store/common/widgets/card/brandCard.dart';
import 'package:t_store/common/widgets/catagory/catagoryTab.dart';
import 'package:t_store/common/widgets/custom_shape/CustomSearchBar.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/layout/gridView.dart';
import 'package:t_store/common/widgets/productCart/CartCountIcon.dart';
import 'package:t_store/features/shop/screens/cart/cartScreen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartCountIcon(
              onPressed: () {
                Get.to(const Cart());
              },
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
                        const CustomSearchBar(
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
                              return const BrandCard(
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: const CustomTabBar(
                    tabs: [
                      Tab(
                        text: "Sports",
                      ),
                      Tab(
                        text: "Clothing",
                      ),
                      Tab(
                        text: "Shoes",
                      ),
                      Tab(
                        text: "Electronics",
                      ),
                      Tab(
                        text: "Furniture",
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                CatagoryTab(),
                CatagoryTab(),
                CatagoryTab(),
                CatagoryTab(),
                CatagoryTab(),
              ],
            )),
      ),
    );
  }
}
