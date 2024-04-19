import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension Utilites on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
    //error snackbar
  }

  Future showBottomSheet(Widget child,
          {bool isDismissible = true, bool isScrollControlled = false}) =>
      showModalBottomSheet(
        context: this,
        isDismissible: isDismissible,
        isScrollControlled: isScrollControlled,
        builder: (context) => child,
      );

  dynamic get arguments => ModalRoute.of(this)!.settings.arguments;

  bool get isKeyboardVisible => MediaQuery.viewInsetsOf(this).bottom != 0;

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  Size get uSize => MediaQuery.sizeOf(this);

  Orientation get orientation => MediaQuery.orientationOf(this);

  void unfocus() => FocusScope.of(this).requestFocus(FocusNode());

  String get lanuageCode => Localizations.localeOf(this).languageCode;

  double get width => uSize.width;

  double get height => uSize.height;

  TextTheme get textTheme => theme.textTheme;

  bool get isDarkTheme => theme.brightness == Brightness.dark;
}

isSmallDevice(Size size) {
  return size.height < 675;
}

extension InstaFormatters on TextInputFormatter {
  String format(String text) {
    return formatEditUpdate(
      const TextEditingValue(),
      TextEditingValue(
        text: text,
        selection: TextSelection(
          baseOffset: text.length,
          extentOffset: text.length,
        ),
      ),
    ).text;
  }
}
