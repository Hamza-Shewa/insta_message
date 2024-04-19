import 'package:freezed_annotation/freezed_annotation.dart';

part 'cubit_state.freezed.dart';

@freezed
class CubitState<T> with _$CubitState<T> {
  const factory CubitState.initial() = Initial<T>;
  const factory CubitState.loading() = Loading<T>;
  const factory CubitState.loaded(T data) = Loaded<T>;
  const factory CubitState.error() = Error<T>;
}
