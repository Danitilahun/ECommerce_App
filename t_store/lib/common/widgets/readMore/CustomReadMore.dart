import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CustomReadMore extends StatelessWidget {
  const CustomReadMore({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 2,
      colorClickableText: Colors.pink,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
    );
  }
}
