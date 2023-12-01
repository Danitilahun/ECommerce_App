import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/image/CircularImage.dart';
import 'package:t_store/common/widgets/listTile/SettingMenu.dart';
import 'package:t_store/common/widgets/listTile/UserProfile.dart';
import 'package:t_store/features/personalization/screen/address/address.dart';
import 'package:t_store/features/shop/screens/home/widgets/PrimaryHeaderComponet.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderComponet(
                child: Column(
              children: [
                CustomAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                const UserProfile(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            )),

            // body

            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  SectionHeader(title: "Account Settings", showButton: false),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SettingMenuTile(
                    title: "My Addresses",
                    icon: Iconsax.safe_home,
                    subtitle: "Set shop delivery address",
                    onTab: () {
                      Get.to(const UserAddress());
                    },
                  ),
                  SettingMenuTile(
                      title: "My Cart",
                      icon: Iconsax.shopping_cart,
                      subtitle: "Add , Remove Products and move to cart"),
                  SettingMenuTile(
                      title: "My Orders",
                      icon: Iconsax.bag_tick,
                      subtitle: "InProgress and Completed Orders"),
                  SettingMenuTile(
                      title: "Bank Account",
                      icon: Iconsax.bank,
                      subtitle: "Withdraw balance to registered bank account"),
                  SettingMenuTile(
                      title: "My Coupons",
                      icon: Iconsax.discount_shape,
                      subtitle: "List of all discount coupons"),
                  SettingMenuTile(
                      title: "Notifications",
                      icon: Iconsax.notification,
                      subtitle: "Set any kind of notification messages"),
                  SettingMenuTile(
                      title: "Account Privacy",
                      icon: Iconsax.security_card,
                      subtitle: "Manage data usage and connected accounts"),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SectionHeader(title: "App Settings", showButton: false),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SettingMenuTile(
                    title: "Load Data",
                    icon: Iconsax.document_upload,
                    subtitle: "Set recommendation based on location",
                  ),
                  SettingMenuTile(
                    title: "GeoLocation",
                    icon: Iconsax.location,
                    subtitle: "Set shop delivery address",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingMenuTile(
                    title: "Safe Mode",
                    icon: Iconsax.security_user,
                    subtitle: "Search result in safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingMenuTile(
                    title: "HD Image Quality",
                    icon: Iconsax.image,
                    subtitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
