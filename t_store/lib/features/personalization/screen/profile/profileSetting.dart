import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/custom_shape/SectionHeader.dart';
import 'package:t_store/common/widgets/image/CircularImage.dart';
import 'package:t_store/features/personalization/screen/profile/widgets/ProfileInformation.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Profile Setting",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircularImage(
                    image: TImages.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture")),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SectionHeader(title: "Profile Information", showButton: false),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            ProfileInformation(
              title: "Name",
              value: "Daniel Tilahun Mohammed",
              onTab: () {},
            ),
            ProfileInformation(
              title: "Username",
              value: "danit",
              onTab: () {},
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SectionHeader(title: "Personal Information", showButton: false),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            ProfileInformation(
              title: "UserId",
              value: "34546",
              onTab: () {},
            ),
            ProfileInformation(
              title: "Email",
              value: "tiledan2015@gmail.com",
              onTab: () {},
            ),
            ProfileInformation(
              title: "Phone Number",
              value: "+251 911 11 11 11",
              onTab: () {},
            ),
            ProfileInformation(
              title: "Gender",
              value: "Male",
              onTab: () {},
            ),
            ProfileInformation(
              title: "Date of Birth",
              value: "2001-07-31",
              onTab: () {},
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Close Account",
                      style: TextStyle(color: Colors.red),
                    )))
          ]),
        ),
      ),
    );
  }
}
