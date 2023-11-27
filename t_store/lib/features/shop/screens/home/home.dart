import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appBar/appBar.dart';
import 'package:t_store/common/widgets/custom_shape/CircularContainer.dart';
import 'package:t_store/common/widgets/custom_shape/CurvedEdgeWidget.dart';
import 'package:t_store/common/widgets/custom_shape/curved_shapes.dart';
import 'package:t_store/common/widgets/productCart/CartCountIcon.dart';
import 'package:t_store/features/shop/screens/home/widgets/HomeAppBar.dart';
import 'package:t_store/features/shop/screens/home/widgets/PrimaryHeaderComponet.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PrimaryHeaderComponet(
            child: Column(
              children: [
                HomeAppBar(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
