import 'package:flutter/material.dart';

extension Margins on Widget {
  Widget marginAll(double margin) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: this,
    );
  }

  Widget marginBottom(double margin) {
    return Container(
      margin: EdgeInsets.only(bottom: margin),
      child: this,
    );
  }

  Widget marginTop(double margin) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      child: this,
    );
  }

  Widget marginEnd(double margin) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: margin),
      child: this,
    );
  }

  Widget marginStart(double margin) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: margin),
      child: this,
    );
  }

  Widget marginVertical(double margin) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: margin),
      child: this,
    );
  }

  Widget marginHorizontal(double margin) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: this,
    );
  }

  Widget marginOnly({
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    return Container(
      margin: EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        left: left ?? 0,
        right: right ?? 0,
      ),
      child: this,
    );
  }

  Widget marginSymmetric({double? vertical, double? horizontal}) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: vertical ?? 0,
        horizontal: horizontal ?? 0,
      ),
      child: this,
    );
  }
}

extension InstestMargins on EdgeInsetsGeometry {
  EdgeInsetsGeometry marginBottom(double margin) {
    return EdgeInsets.only(bottom: margin);
  }

  EdgeInsetsGeometry marginTop(double margin) {
    return EdgeInsets.only(top: margin);
  }

  EdgeInsetsGeometry marginEnd(double margin) {
    return EdgeInsetsDirectional.only(end: margin);
  }

  EdgeInsetsGeometry marginStart(double margin) {
    return EdgeInsetsDirectional.only(start: margin);
  }

  EdgeInsetsGeometry marginVertical(double margin) {
    return EdgeInsets.symmetric(vertical: margin);
  }

  EdgeInsetsGeometry marginHorizontal(double margin) {
    return EdgeInsets.symmetric(horizontal: margin);
  }
}
