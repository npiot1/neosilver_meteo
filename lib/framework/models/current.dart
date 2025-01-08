import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neosilver_meteo/framework/models/weather.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@freezed
class Current with _$Current {
  factory Current({
    @Default(0) int dt,
    @Default(0) int sunrise,
    @Default(0) int sunset,
    @Default(0) double temp,
    @JsonKey(name: 'feels_like') @Default(0) double feelsLike,
    @Default(0) int pressure,
    @Default(0) int humidity,
    @JsonKey(name: 'dew_point') @Default(0) double dewPoint,
    @Default(0) double uvi,
    @Default(0) int clouds,
    @Default(0) int visibility,
    @JsonKey(name: 'wind_speed') @Default(0) double windSpeed,
    @JsonKey(name: 'wind_deg') @Default(0) int windDeg,
    @JsonKey(name: 'wind_gust') @Default(0) double windGust,
    @Default(null) Weather weather

  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
}