import 'package:flutter/material.dart';
import 'package:insta_message/global/extensions.dart';

class InstaButton extends StatelessWidget {
  const InstaButton({
    this.onPressed,
    this.text = '',
    super.key,
  });
  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(
            context.width,
            50,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(context.theme.primaryColor),
        overlayColor:
            MaterialStateProperty.all(context.theme.primaryColorLight),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: context.theme.scaffoldBackgroundColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
