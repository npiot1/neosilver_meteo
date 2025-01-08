import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  factory Location({
    @Default("") String lat,
    @Default("") String lon,
    @Default("") String timezone,
    @Default("") String timezone_offset,
    @Default(null) Current current
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}