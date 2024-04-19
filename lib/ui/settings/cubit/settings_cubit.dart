import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:insta_message/logic/global/cubit_state/cubit_state.dart';
import 'package:insta_message/logic/structure/enums.dart';

class SettingsCubit extends Cubit<CubitState> {
  SettingsCubit() : super(const CubitState.initial());
  Box box = Hive.box('settings');

  void changeTheme(ThemeType type) {
    emit(const CubitState.loading());
    box.put('theme', type.name);
    emit(const CubitState.loaded(null));
  }

  void changeLanguage(String language) {
    emit(const CubitState.loading());
    box.put('language', language);
    emit(const CubitState.loaded(null));
  }
}
