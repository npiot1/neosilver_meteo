
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  const Config({required this.apiUrl, required this.apiUrlGeo, required this.apiKey});

  static late Config get;
  final String apiUrl;
  final String apiUrlGeo;
  final String apiKey;

}

Future<Config> getConfig() async {

  await dotenv.load();
  var apiKey = dotenv.env['API_KEY'];
  var apiUrl = dotenv.env['API_URL'];
  var apiUrlGeo = dotenv.env['API_URL_GEO'];

  if(apiKey == null || apiUrl == null || apiUrlGeo == null) {
    throw ArgumentError('ENV FILE INCORRECT, PLEASE CHECK README');
  }

  return Config(apiKey: apiKey, apiUrl: apiUrl, apiUrlGeo: apiUrlGeo);

}