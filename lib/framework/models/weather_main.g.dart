// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherMainImpl _$$WeatherMainImplFromJson(Map<String, dynamic> json) =>
    _$WeatherMainImpl(
      temp: (json['temp'] as num?)?.toDouble() ?? 0,
      feelsLike: (json['feels_like'] as num?)?.toDouble() ?? 0,
      tempMin: (json['temp_min'] as num?)?.toDouble() ?? 0,
      tempMax: (json['temp_max'] as num?)?.toDouble() ?? 0,
      pressure: (json['pressure'] as num?)?.toInt() ?? 0,
      humidity: (json['humidity'] as num?)?.toInt() ?? 0,
      seaLevel: (json['sea_level'] as num?)?.toInt() ?? 0,
      grndLevel: (json['grnd_level'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WeatherMainImplToJson(_$WeatherMainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grndLevel,
    };
