import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class ShadowStyles {
  static final VerticalProductShadow = BoxShadow(
    color: TColors.darkerGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2), // changes position of shadow
  );

  static final HorizontalProductShadow = BoxShadow(
    color: TColors.darkerGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2), // changes position of shadow
  );
}
