import 'dart:math';

import 'package:flutter/material.dart';

class PageReveal extends StatelessWidget {

  final double revealPercent;
  final Widget child;

  PageReveal({
    this.revealPercent,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipper: new CircleRevealClipper(revealPercent: revealPercent),
      child: child,
    );
  }
}

class CircleRevealClipper extends CustomClipper<Rect> {

  final double revealPercent;

  CircleRevealClipper({
    this.revealPercent,
  });

  @override
  Rect getClip(Size size) {
    final epicenter = new Offset(size.width / 2, size.height * 0.9);

    double theta = atan(epicenter.dy / epicenter.dx);
    final distanceToCorner = epicenter.dy / sin(theta);

    final raduis = distanceToCorner * revealPercent;
    final diameter = 2 * raduis;

    return Rect.fromLTWH(epicenter.dx - raduis, epicenter.dy - raduis, diameter, diameter);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}