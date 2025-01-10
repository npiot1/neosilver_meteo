import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys.freezed.dart';
part 'sys.g.dart';

@freezed
class Sys with _$Sys {
  factory Sys({
    required int id,
    @Default(0) int type,
    @Default("") String country,
    @Default(0) int sunrise,
    @Default(0) int sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}