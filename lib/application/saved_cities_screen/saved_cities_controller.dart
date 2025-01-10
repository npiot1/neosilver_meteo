part of 'saved_cities.dart';

final _controllerPod =
    StateNotifierProvider.autoDispose<_Controller, ScreenState>((ref) {
  return _Controller(ref);
});

class _Controller extends StateNotifier<ScreenState> {
  final Ref ref;

  _Controller(this.ref) : super(const ScreenState()) {
    getCitiesFromShared();

    ref.listen(AppRepository.sharedPrefs.selectAsync((data) {
      return data.get('savedCities');
    },), (previous, next) {
      getCitiesFromShared();
    },);
  }

  void getCitiesFromShared() async {
    List<City> savedCities =
        await ref.read(AppRepository.pod).getFavoriteCities();
    state = state.copyWith(cities: savedCities);
  }

  Future<void> deleteCity(City city) async {
    await ref.read(AppRepository.pod).removeFavoriteCity(city.lat, city.lon);
    List<City> resCities = state.cities.toList();
    resCities.remove(city);
    state = state.copyWith(cities: resCities);
  }

  Future<WeatherData> getCityData(City city) async {
    return await ref.read(WeatherDataRepository.pod).getCityData(city);
  }
}
