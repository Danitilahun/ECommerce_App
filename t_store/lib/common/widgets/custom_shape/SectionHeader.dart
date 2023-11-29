import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.buttonText = "View all",
    this.onPressed,
    this.showButton = true,
    this.textColor,
  });

  final String title;
  final String buttonText;
  final VoidCallback? onPressed;
  final showButton;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor,
              ),
        ),
        if (showButton)
          TextButton(onPressed: onPressed, child: Text(buttonText)),
      ],
    );
  }
}
