part of 'add_city.dart';

final _controllerPod = StateNotifierProvider.autoDispose<_Controller, ScreenState>((ref) {
  return _Controller(ref);
});

class _Controller extends StateNotifier<ScreenState> {

  final Ref ref;

  _Controller(this.ref) : super(const ScreenState());

  void getCities() async {
    final result = await ref.read(CityRepository.pod).getCities(state.searchText);
    List<City> savedCities = await ref.read(AppRepository.pod).getFavoriteCities();
    removeMatchingCities(result, savedCities);
    state = state.copyWith(cities: result);
  }

  void removeMatchingCities(List<City> list1, List<City> list2) {
    final Set<String> cityKeysInList2 = list2
        .map((city) => '${city.name}|${city.country}')
        .toSet();

    list1.removeWhere(
          (city) => cityKeysInList2.contains('${city.name}|${city.country}'),
    );
  }

  void setSearchText(String q) {
    state = state.copyWith(searchText: q);
  }

  Future<void> saveCity(City city) async {
    await ref.read(AppRepository.pod).addFavoriteCity(city);
    List<City> resCities = state.cities.toList();
    resCities.remove(city);
    state = state.copyWith(cities: resCities);
  }

}