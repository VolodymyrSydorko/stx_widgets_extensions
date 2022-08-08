import 'package:flutter/material.dart';

extension ClipWidget on Widget {
  Widget clip(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: this,
    );
  }
}
