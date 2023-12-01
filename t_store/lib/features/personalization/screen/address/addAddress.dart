import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Add New Address",
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user), labelText: "Name"),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile), labelText: "Phone"),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: "Street"),
                    ),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: "PostalCode"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: "City"),
                    ),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: "State"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.global), labelText: "Country"),
              ),
              const SizedBox(
                height: TSizes.defaultSpace,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Save"),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
