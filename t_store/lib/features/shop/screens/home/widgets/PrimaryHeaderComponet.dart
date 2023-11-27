import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shape/CircularContainer.dart';
import 'package:t_store/common/widgets/custom_shape/CurvedEdgeWidget.dart';
import 'package:t_store/utils/constants/colors.dart';

class PrimaryHeaderComponet extends StatelessWidget {
  const PrimaryHeaderComponet({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
          color: TColors.primary,
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            height: 400,
            child: Stack(
              children: [
                Positioned(
                    top: -150,
                    right: -250,
                    child: CircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1),
                    )),
                Positioned(
                    top: 100,
                    right: -300,
                    child: CircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1),
                    )),
                child
              ],
            ),
          )),
    );
  }
}
