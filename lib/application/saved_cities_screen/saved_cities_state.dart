import 'package:freezed_annotation/freezed_annotation.dart';
import '../../framework/models/city.dart';

part 'saved_cities_state.freezed.dart';

@freezed
class ScreenState with _$ScreenState {
  const factory ScreenState({
    @Default(const []) List<City> cities,
  }) = _ScreenState;

}