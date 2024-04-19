import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:insta_message/global/extensions.dart';
import 'package:insta_message/logic/global/alerts/insta_alerts.dart';
import 'package:insta_message/logic/global/cubit_state/cubit_state.dart';
import 'package:insta_message/logic/global/utilities/input_formatters.dart';
import 'package:insta_message/logic/structure/enums.dart';
import 'package:insta_message/logic/structure/models/usage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeCubit extends Cubit<CubitState> {
  HomeCubit() : super(const CubitState.initial());
  final phoneField = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLibyan = true;
  Future launch(Social platform) async {
    try {
      emit(const CubitState.loading());
      launchUrl(
          Uri.parse('${platform.url}${phoneField.text.replaceAll(' ', '')}'));
      await _saveLaunch(platform);
      emit(CubitState.loaded(platform));
    } catch (e) {
      emit(const CubitState.initial());
      rethrow;
    }
  }

  Future _saveLaunch(Social platform) async {
    Usage usage = Usage(
      url: platform.url,
      social: platform.name,
      query: phoneField.text,
      createdAt: DateTime.now(),
    );
    Hive.box('history').add(usage);
  }

  Future paste() async {
    emit(const CubitState.loading());
    final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
    String? clipboardText = clipboardData?.text;
    bool isLibyan = false;
    if (clipboardText != null) {
      clipboardText = clipboardText.replaceAll('+', '');
      if (!clipboardText.startsWith('218')) {
        clipboardText = '218$clipboardText';
        isLibyan = true;
      }
      if (clipboardText.startsWith(RegExp(r'^(092|091|093|094)'))) {
        clipboardText = clipboardText.replaceFirst('0', '');
        isLibyan = true;
      }
      if (isLibyan) {
        this.isLibyan = true;
        phoneField.text = LibyanPhoneFormatter().format(clipboardText);
      } else {
        phoneField.text = clipboardText.replaceAll(' ', '');
      }
    }
    emit(const CubitState.initial());
  }

  Future go() async {
    if (formKey.currentState!.validate()) {}
  }

  void toggleCountry() {
    emit(const CubitState.loading());
    isLibyan = !isLibyan;
    String phone = phoneField.text.replaceAll(' ', '');
    if (isLibyan) {
      phoneField.text = LibyanPhoneFormatter().format(phone);
    } else {
      phoneField.text = phone;
    }
    emit(const CubitState.initial());
  }
}
