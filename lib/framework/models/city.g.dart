// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      zip: json['zip'] as String? ?? "",
      name: json['name'] as String? ?? "",
      lat: json['lat'] as String? ?? "",
      lon: json['lon'] as String? ?? "",
      country: json['country'] as String? ?? "",
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'zip': instance.zip,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
    };
