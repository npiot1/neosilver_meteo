part of 'saved_cities.dart';


final _controllerPod = StateNotifierProvider.autoDispose<_Controller, ScreenState>((ref) {
  return _Controller(ref);
});

class _Controller extends StateNotifier<ScreenState> {

  final Ref ref;

  _Controller(this.ref) : super(const ScreenState());
}