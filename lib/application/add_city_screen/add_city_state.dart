
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../framework/models/city.dart';

part 'add_city_state.freezed.dart';

@freezed
class ScreenState with _$ScreenState {
  const factory ScreenState({
    //result cities search
    @Default(const []) List<City> cities,
    @Default("") String searchText
  }) = _ScreenState;

}