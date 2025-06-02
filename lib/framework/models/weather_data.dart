import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather_flutter/framework/models/sys.dart';
import 'package:open_weather_flutter/framework/models/weather.dart';
import 'package:open_weather_flutter/framework/models/weather_main.dart';
import 'package:open_weather_flutter/framework/models/wind.dart';

import 'clouds.dart';
import 'coord.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

@freezed
class WeatherData with _$WeatherData {
  factory WeatherData({
    required int id,
    @Default(null) Coord? coord,
    @Default([]) List<Weather> weather,
    @Default("") String base,
    @Default("") String icon,
    @Default(null) WeatherMain? main,
    @Default(0) int visibility,
    @Default(null) Wind? wind,
    @Default(null) Clouds? clouds,
    @Default(0) int dt,
    @Default(null) Sys? sys,
    @Default(0) int timezone,
    @Default("") String name
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);
}