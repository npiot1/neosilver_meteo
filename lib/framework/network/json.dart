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

  List<T> mapList<T>(String key, T Function(Map<String, dynamic> json) map) {
    return list<Map<String, dynamic>>(key).map(map).toList();
  }

  List<T> list<T>(String key) {
    final list = value[key];
    if (list == null || list is! List<dynamic>) {
      return [];
    }
    try {
      return list.cast<T>();
    } catch (e, s) {
      return [];
    }
  }

}