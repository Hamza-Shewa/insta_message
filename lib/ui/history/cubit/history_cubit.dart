import 'package:bloc/bloc.dart';
import 'package:insta_message/logic/global/cubit_state/cubit_state.dart';

class HistoryCubit extends Cubit<CubitState> {
  HistoryCubit() : super(const CubitState.initial());
}
