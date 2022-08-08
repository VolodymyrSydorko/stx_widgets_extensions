import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  Size get screenSize => mq.size;

  double get screenHeight => screenSize.height;

  double get screenWidth => screenSize.width;
}
