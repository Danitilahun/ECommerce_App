import 'package:flutter/material.dart';

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);

    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final SecondfirstCurve = Offset(0, size.height - 20);
    final SecondlastCurve = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(SecondfirstCurve.dx, SecondfirstCurve.dy,
        SecondlastCurve.dx, SecondlastCurve.dy);

    final ThirdFirstCurve = Offset(size.width, size.height - 20);
    final ThirdLastCurve = Offset(size.width, size.height);

    path.quadraticBezierTo(ThirdFirstCurve.dx, ThirdFirstCurve.dy,
        ThirdLastCurve.dx, ThirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    return true;
  }
}
