library add_city;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neosilver_meteo/framework/repository/city.dart';
import '../../framework/models/city.dart';
import '../saved_cities_screen/saved_cities_state.dart';

part 'add_city_controller.dart';


class AddCity extends ConsumerWidget {
  const AddCity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<City> resSearch = ref.watch(_controllerPod.select((value) => value.cities));

    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            ref.read(_controllerPod.notifier).getCities("Londres");
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          child: const Text('Click me')
        ),
        Text(resSearch.toString())
      ],
    );
  }
}
