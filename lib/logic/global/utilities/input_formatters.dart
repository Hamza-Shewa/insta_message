import 'package:flutter/services.dart';

class LibyanPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final oldValueText = oldValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    String newValueText = newValue.text;

    try {
      if (oldValueText == newValue.text) {
        newValueText = newValueText.substring(0, newValue.selection.end - 1) +
            newValueText.substring(newValue.selection.end, newValueText.length);
      }
    } catch (e) {
      return oldValue;
    }

    StringBuffer buffer = StringBuffer();
    for (var i = 0; i < newValueText.length; i++) {
      buffer.write(newValueText[i]);
      int index = i;
      if (index == 2 ||
          index == 4 ||
          index == 7 ||
          index == 9 && newValueText.length != index) {
        buffer.write(' ');
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(
        offset: buffer.toString().length,
      ),
    );
  }
}
