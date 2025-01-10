import 'package:freezed_annotation/freezed_annotation.dart';

part 'clouds.freezed.dart';
part 'clouds.g.dart';

@freezed
class Clouds with _$Clouds {
  factory Clouds({
    @Default(0) double speed,
    @Default(0) int deg,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}