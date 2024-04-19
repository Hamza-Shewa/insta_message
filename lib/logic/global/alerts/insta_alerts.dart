import 'package:flutter/material.dart';
import 'package:insta_message/logic/themes/ui.dart';

class InstaAlerts {
  static final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static void successSnackBar(String message, {SnackBarAction? action}) {
    rootScaffoldMessengerKey.currentState?.removeCurrentSnackBar();
    rootScaffoldMessengerKey.currentState
        ?.showSnackBar(Ui.successSnack(message, action: action));
  }

  static void errorSnackBar(String message, {SnackBarAction? action}) {
    rootScaffoldMessengerKey.currentState?.removeCurrentSnackBar();
    rootScaffoldMessengerKey.currentState
        ?.showSnackBar(Ui.errorSnack(message, action: action));
  }

  static void warningSnackBar(String message, {SnackBarAction? action}) {
    rootScaffoldMessengerKey.currentState?.removeCurrentSnackBar();
    rootScaffoldMessengerKey.currentState
        ?.showSnackBar(Ui.warningSnack(message, action: action));
  }
}
