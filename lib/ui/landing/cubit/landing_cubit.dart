import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:insta_message/logic/global/cubit_state/cubit_state.dart';
import 'package:insta_message/ui/history/history.dart';
import 'package:insta_message/ui/home/home.dart';
import 'package:insta_message/ui/settings/settings.dart';

class LandingCubit extends Cubit<CubitState<int>> {
  LandingCubit() : super(const CubitState.loaded(1));
  int currentIndex = 1;

  void changeIndex(int index) {
    emit(const CubitState.loading());
    currentIndex = index;
    emit(CubitState.loaded(index));
  }

  List<Widget> screens = const [
    HistoryView(),
    HomeView(),
    SettingsView(),
  ];
}
