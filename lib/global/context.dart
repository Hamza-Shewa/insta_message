import 'package:flutter/material.dart';

extension NavContext on BuildContext {
  void pop({dynamic result}) => Navigator.pop(this, result);

  bool canPop() => Navigator.canPop(this);

  void popUntilRoute(String routeName) =>
      Navigator.popUntil(this, ModalRoute.withName(routeName));

  void popUntil(bool Function(Route<dynamic>) predicate) =>
      Navigator.popUntil(this, predicate);

  Future pushNamed(String routeName, {dynamic arguments}) async =>
      await Navigator.pushNamed(this, routeName, arguments: arguments);

  Future pushReplacementNamed(String routeName, {dynamic arguments}) async =>
      await Navigator.pushReplacementNamed(this, routeName,
          arguments: arguments);
}
