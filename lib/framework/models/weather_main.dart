import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather_flutter/framework/models/weather.dart';

part 'weather_main.freezed.dart';
part 'weather_main.g.dart';

@freezed
class WeatherMain with _$WeatherMain {
  factory WeatherMain({
    @Default(0) double temp,
    @JsonKey(name: 'feels_like') @Default(0) double feelsLike,
    @JsonKey(name: 'temp_min') @Default(0) double tempMin,
    @JsonKey(name: 'temp_max') @Default(0) double tempMax,
    @Default(0) int pressure,
    @Default(0) int humidity,
    @JsonKey(name: 'sea_level') @Default(0) int seaLevel,
    @JsonKey(name: 'grnd_level') @Default(0) int grndLevel,
  }) = _WeatherMain;

  factory WeatherMain.fromJson(Map<String, dynamic> json) => _$WeatherMainFromJson(json);
}