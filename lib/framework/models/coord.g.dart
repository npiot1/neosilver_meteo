// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoordImpl _$$CoordImplFromJson(Map<String, dynamic> json) => _$CoordImpl(
      lon: (json['lon'] as num?)?.toDouble() ?? 0,
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CoordImplToJson(_$CoordImpl instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };
