import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shape/CircularContainer.dart';
import 'package:t_store/common/widgets/custom_shape/CurvedEdgeWidget.dart';
import 'package:t_store/common/widgets/custom_shape/curved_shapes.dart';
import 'package:t_store/features/shop/screens/home/widgets/PrimaryHeaderComponet.dart';
import 'package:t_store/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PrimaryHeaderComponet(
            child: Container(),
          ),
        ],
      ),
    ));
  }
}
