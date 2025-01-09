part of 'add_city.dart';

final _controllerPod = StateNotifierProvider.autoDispose<_Controller, ScreenState>((ref) {
  return _Controller(ref);
});

class _Controller extends StateNotifier<ScreenState> {

  final Ref ref;

  _Controller(this.ref) : super(const ScreenState());

  void getCities() async {
    final result = await ref.read(CityRepository.pod).getCities(state.searchText);
    state = state.copyWith(cities: result);
  }

  void setSearchText(String q) {
    state = state.copyWith(searchText: q);
  }

  void saveCity(City city) {

  }

}