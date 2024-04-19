import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_message/global/extensions.dart';

class InstaField extends StatelessWidget {
  const InstaField({
    required this.controller,
    required this.hintText,
    this.inputFormatters = const [],
    this.suffix,
    this.prefix,
    this.inputType,
    this.validator,
    super.key,
  });
  final String hintText;
  final TextEditingController controller;
  final Widget? suffix;
  final Widget? prefix;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      keyboardType: inputType,
      validator: validator,
      textDirection: TextDirection.ltr,
      decoration: InputDecoration(
        hintText: hintText,
        hintTextDirection: TextDirection.ltr,
        suffixIcon: suffix,
        prefixIcon: prefix,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: context.theme.primaryColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: context.theme.primaryColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
