import 'package:flutter/material.dart';

extension Paddings on Widget {
  Widget paddingAll(double padding) {
    return Container(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }

  Widget paddingBottom(double padding) {
    return Container(
      padding: EdgeInsets.only(bottom: padding),
      child: this,
    );
  }

  Widget paddingTop(double padding) {
    return Container(
      padding: EdgeInsets.only(top: padding),
      child: this,
    );
  }

  Widget paddingEnd(double padding) {
    return Container(
      padding: EdgeInsetsDirectional.only(end: padding),
      child: this,
    );
  }

  Widget paddingStart(double padding) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: padding),
      child: this,
    );
  }

  Widget paddingVertical(double padding) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: this,
    );
  }

  Widget paddingHorizontal(double padding) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: this,
    );
  }

  Widget paddingSymmetric({double? vertical, double? horizontal}) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: vertical ?? 0, horizontal: horizontal ?? 0),
      child: this,
    );
  }

  Widget paddingOnly({
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        left: left ?? 0,
        right: right ?? 0,
      ),
      child: this,
    );
  }
}

extension Instestpaddings on EdgeInsetsGeometry {
  EdgeInsetsGeometry paddingBottom(double padding) {
    return EdgeInsets.only(bottom: padding);
  }

  EdgeInsetsGeometry paddingTop(double padding) {
    return EdgeInsets.only(top: padding);
  }

  EdgeInsetsGeometry paddingEnd(double padding) {
    return EdgeInsetsDirectional.only(end: padding);
  }

  EdgeInsetsGeometry paddingStart(double padding) {
    return EdgeInsetsDirectional.only(start: padding);
  }

  EdgeInsetsGeometry paddingVertical(double padding) {
    return EdgeInsets.symmetric(vertical: padding);
  }

  EdgeInsetsGeometry paddingHorizontal(double padding) {
    return EdgeInsets.symmetric(horizontal: padding);
  }
}
