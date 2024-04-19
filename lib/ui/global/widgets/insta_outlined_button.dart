import 'package:flutter/material.dart';
import 'package:insta_message/global/extensions.dart';

class InstaOutlinedButton extends StatelessWidget {
  const InstaOutlinedButton({
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
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor:
            MaterialStateProperty.all(context.theme.primaryColorLight),
        side: MaterialStateProperty.all(
          BorderSide(
            color: context.theme.primaryColor,
            width: 2,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: context.theme.primaryColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
