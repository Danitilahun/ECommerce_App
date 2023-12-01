import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/card/brandCard.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/layout/gridView.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AllBrand extends StatelessWidget {
  const AllBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("All Brands"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SectionHeader(
                title: "Brands",
                showButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              CustomGridView(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (_, index) => const BrandCard(
                  showBorder: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
