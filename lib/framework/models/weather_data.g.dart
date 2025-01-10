// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDataImpl _$$WeatherDataImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDataImpl(
      id: (json['id'] as num).toInt(),
      coord: json['coord'] == null
          ? null
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      base: json['base'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      main: json['main'] == null
          ? null
          : WeatherMain.fromJson(json['main'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toInt() ?? 0,
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? null
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: (json['dt'] as num?)?.toInt() ?? 0,
      sys: json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: (json['timezone'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$WeatherDataImplToJson(_$WeatherDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coord': instance.coord,
      'weather': instance.weather,
      'base': instance.base,
      'icon': instance.icon,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'name': instance.name,
    };
