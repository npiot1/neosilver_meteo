import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  factory City({
    @Default("") String zip,
    @Default("") String name,
    @Default(0) double lat,
    @Default(0) double lon,
    @Default("") String country,
    @JsonKey(name: 'local_names') @Default(null) Map<String, String>? localNames
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}