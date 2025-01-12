// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SysImpl _$$SysImplFromJson(Map<String, dynamic> json) => _$SysImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      type: (json['type'] as num?)?.toInt() ?? 0,
      country: json['country'] as String? ?? "",
      sunrise: (json['sunrise'] as num?)?.toInt() ?? 0,
      sunset: (json['sunset'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SysImplToJson(_$SysImpl instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
