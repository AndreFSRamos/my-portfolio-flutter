import 'package:flutter/material.dart';

class ClipperSkills extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.quadraticBezierTo(
        0, size.height * 0.1242857, 0, size.height * 0.1657143);
    path0.cubicTo(
        size.width * 0.3728571,
        size.height * 0.0914286,
        size.width * 0.5642857,
        size.height * 0.2885714,
        size.width,
        size.height * 0.1657143);
    path0.quadraticBezierTo(size.width, size.height * 0.1242857, size.width, 0);
    path0.lineTo(0, 0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
