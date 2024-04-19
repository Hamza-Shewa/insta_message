import 'package:bloc/bloc.dart';
import 'package:insta_message/logic/global/cubit_state/cubit_state.dart';

class SettingsCubit extends Cubit<CubitState> {
  SettingsCubit() : super(const CubitState.initial());
}
