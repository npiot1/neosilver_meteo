
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config.dart';
import '../models/city.dart';
import '../network/client.dart';

class CityRepository {

  static final pod = Provider<CityRepository>((ref) => CityRepository._(ref));

  CityRepository._(this.ref);
  final Ref ref;

  Future<List<City>> getCities(String q) async {
    final response = await ref.read(ApiClient.pod).request<List<City>>(
      Http.get,
      '/direct',
      url: Config.get.apiUrlGeo,
      queryParameters: {
        "q": q,
        "limit": 5,
      },
      mapData: (json) => json.mapList<City>('data', (json) => City.fromJson(json)),
    );

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