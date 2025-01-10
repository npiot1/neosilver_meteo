import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind.freezed.dart';
part 'wind.g.dart';

@freezed
class Wind with _$Wind {
  factory Wind({
    @Default(0) double speed,
    @Default(0) int deg,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}