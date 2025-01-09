

import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neosilver_meteo/framework/models/city.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppRepository {

  static final pod = Provider<AppRepository>((ref) =>
      AppRepository._(ref));

  AppRepository._(this.ref);
  final Ref ref;

  static final sharedPrefs =
  FutureProvider<SharedPreferences>((_) async => await SharedPreferences.getInstance());

  static const String cityListKey = 'savedCities';

  Future<void> addFavoriteCity(City newCity) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jsonString = prefs.getString(cityListKey);
    List<City> cityList = [];

    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      cityList = jsonList.map((json) => City.fromJson(json)).toList();
    }

    cityList.add(newCity);

    final String updatedJsonString =
    json.encode(cityList.map((city) => city.toJson()).toList());
    await prefs.setString(cityListKey, updatedJsonString);
  }

  Future<List<City>> getFavoriteCities() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? jsonString = prefs.getString(cityListKey);
    if (jsonString == null) {
      return [];
    }

    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => City.fromJson(json)).toList();
  }

  Future<void> removeFavoriteCity(String cityName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? jsonString = prefs.getString(cityListKey);
    if (jsonString == null) {
      return;
    }

    final List<dynamic> jsonList = json.decode(jsonString);
    List<City> cityList = jsonList.map((json) => City.fromJson(json)).toList();

    cityList = cityList.where((city) => city.name != cityName).toList();

    final String updatedJsonString =
    json.encode(cityList.map((city) => city.toJson()).toList());
    await prefs.setString(cityListKey, updatedJsonString);
  }

}