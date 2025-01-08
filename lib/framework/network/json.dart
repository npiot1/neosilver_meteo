import 'package:freezed_annotation/freezed_annotation.dart';
part 'json.freezed.dart';

@freezed
class Json with _$Json {
  const Json._();

  factory Json(Map<String, dynamic> value) = _Json;

  factory Json.parse(Object rawData) {
    Map<String, dynamic> data;

    if (rawData is Map<String, dynamic>) {
      data = rawData;
    }
    else if (rawData is List<dynamic>) {
      data = {'data': rawData};
    }
    else {
      data = const {};
    }

    return Json(data);
  }

}