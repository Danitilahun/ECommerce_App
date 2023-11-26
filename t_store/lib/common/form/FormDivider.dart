import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:t_store/utils/constants/colors.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
    required this.text,
  });

  final bool dark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            indent: 60,
            endIndent: 5,
            thickness: 0.5,
          ),
        ),

        // -- Or Sign In With
        Text(text.capitalize!, style: Theme.of(context).textTheme.labelMedium),

        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
