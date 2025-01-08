library saved_cities;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neosilver_meteo/application/saved_cities_screen/saved_cities_state.dart';

import '../../framework/models/city.dart';

part 'saved_cities_controller.dart';

class SavedCities extends ConsumerWidget {
  const SavedCities({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text("salut");
  }
}

