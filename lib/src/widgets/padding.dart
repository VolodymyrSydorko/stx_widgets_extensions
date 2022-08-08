import 'package:flutter/material.dart';

extension WidgetPadding on Widget {
  /// Gives padding for all sides
  Widget pa(double all) {
    return Padding(
      padding: EdgeInsets.all(all),
      child: this,
    );
  }

  /// Gives padding for horizontal sides
  Widget px(double x) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: x),
      child: this,
    );
  }

  /// Gives padding for vertical sides
  Widget py(double y) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: y),
      child: this,
    );
  }

  /// Gives padding for right side
  Widget pr(double right) {
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: this,
    );
  }

  /// Gives padding for left side
  Widget pl(double left) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: this,
    );
  }

  /// Gives padding for top side
  Widget pt(double top) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: this,
    );
  }

  //Gives padding for bottom side
  Widget pb(double bottom) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: this,
    );
  }

  /// Extension method to directly change widget padding
  /// Initially 'all' value will be used
  Widget p({
    double all = 0.0,
    double? x,
    double? y,
    double? l,
    double? r,
    double? t,
    double? b,
  }) {
    final padding = EdgeInsets.only(
      left: l ?? x ?? all,
      right: r ?? x ?? all,
      top: t ?? y ?? all,
      bottom: b ?? y ?? all,
    );

    return Padding(padding: padding, child: this);
  }
}
