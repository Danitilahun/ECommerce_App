import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shape/curved_shapes.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShape(),
      child: child,
    );
  }
}
