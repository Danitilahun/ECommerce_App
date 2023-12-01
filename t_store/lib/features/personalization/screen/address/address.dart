import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/features/personalization/screen/address/addAddress.dart';
import 'package:t_store/features/personalization/screen/address/widgets/addressCard.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class UserAddress extends StatelessWidget {
  const UserAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddAddress());
        },
        child: Icon(
          Iconsax.add,
          color: TColors.white,
        ),
        backgroundColor: TColors.primary,
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            AddressCard(selected: true),
            AddressCard(selected: false),
          ]),
        ),
      ),
    );
  }
}
