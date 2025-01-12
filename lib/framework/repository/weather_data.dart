


import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/city.dart';
import '../models/weather_data.dart';
import '../network/client.dart';

class WeatherDataRepository {

  static final pod = Provider<WeatherDataRepository>((ref) => WeatherDataRepository._(ref));

  WeatherDataRepository._(this.ref);
  final Ref ref;

  Future<WeatherData> getLocationData({City? city, double lat = 0.0, double lon = 0.0}) async {

    final response = await ref.read(ApiClient.pod).request<WeatherData>(
      Http.get,
      '/weather',
      queryParameters: {
        "lat": city != null ? city.lat : lat,
        "lon": city != null ? city.lon : lon,
        //"exclude": "current,hourly,daily,alerts"
      },
      mapData: (json) => WeatherData.fromJson(json.value),);

    return response.maybeWhen(
        success: (data, json) {
          return data!;
        },
        orElse: () async {
          throw Exception('ERROR RESPONSE');
        }
    );



  }


}