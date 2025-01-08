import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  factory Location({
    @Default(0) double lat,
    @Default(0) double lon,
    @Default("") String timezone,
    @JsonKey(name: 'timezone_offset') @Default(0) int timezoneOffset,
    @Default(null) Current current
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}