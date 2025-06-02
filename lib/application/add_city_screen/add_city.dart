library add_city;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_weather_flutter/framework/repository/app.dart';
import 'package:open_weather_flutter/framework/repository/city.dart';
import 'package:open_weather_flutter/framework/utils/flag.dart';
import '../../framework/models/city.dart';
import 'add_city_state.dart';

part 'add_city_controller.dart';


class AddCity extends ConsumerWidget {
  const AddCity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final res = ref.watch(_controllerPod.select((value) => value.cities));
    final searchText = ref.watch(_controllerPod.select((value) => value.searchText));

    final uniqueCombinations = <String>{};
    final resSearch = <City>[];

    for (var item in res) {
      final key = '${item.name}-${item.country}';
      if (!uniqueCombinations.contains(key)) {
        uniqueCombinations.add(key);
        resSearch.add(item);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Add city"),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: TextField(
                onChanged: (value) {
                  ref.read(_controllerPod.notifier).setSearchText(value);
                  if (value.length > 2) {
                    ref.read(_controllerPod.notifier).getCities();
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search city',
                ),
              ),
            ),
            if (searchText.length > 2)
              Expanded(
                child: resSearch.isNotEmpty
                    ? ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: resSearch.length,
                        itemBuilder: (context, index) {
                          return CityListItem(city: resSearch[index]);
                        },
                      )
                    : const Center(child: Text("No result")),
              ),
          ],
        ),
      ),
    );
  }
}


class CityListItem extends ConsumerWidget {
  const CityListItem({super.key, required this.city});

  final City city;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languageCode = Localizations.localeOf(context).languageCode;
    final cityName = city.localNames != null && city.localNames!.containsKey(languageCode)
        ? city.localNames![languageCode]
        : city.name;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Text(
          countryCodeToFlag(city.country),
          style: const TextStyle(fontSize: 28),
        ),
        title: Text(
          cityName!,
          style: Theme.of(context).textTheme.titleMedium,
          overflow: TextOverflow.ellipsis,
        ),
trailing: OutlinedButton(
  onPressed: () {
    ref.read(_controllerPod.notifier).saveCity(city).whenComplete(() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Added to favorites")),
      );
    });
  },
  style: OutlinedButton.styleFrom(
    padding: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  child: const Icon(Icons.add, size: 20),
),

      ),
    );
  }
}

