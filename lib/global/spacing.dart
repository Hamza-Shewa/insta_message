import 'package:flutter/widgets.dart';

extension Spacing on num {
  Widget get width => SizedBox(width: toDouble());
  Widget get height => SizedBox(height: toDouble());
}
