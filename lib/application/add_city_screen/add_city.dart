library add_city;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neosilver_meteo/framework/repository/app.dart';
import 'package:neosilver_meteo/framework/repository/city.dart';
import 'package:neosilver_meteo/framework/utils/flag.dart';
import '../../framework/models/city.dart';
import 'add_city_state.dart';

part 'add_city_controller.dart';


class AddCity extends ConsumerWidget {
  const AddCity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<City> res = ref.watch(_controllerPod.select((value) => value.cities));
    String searchText = ref.watch(_controllerPod.select((value) => value.searchText));

    Set<String> uniqueCombinations = {};
    List<City> resSearch = [];

    for (var item in res) {
      String key = '${item.name}-${item.country}';
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
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: TextField(
            onChanged: (value) {
              ref.read(_controllerPod.notifier).setSearchText(value);
              if(value.length>2) {
                ref.read(_controllerPod.notifier).getCities();
              }
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Search city',
            ),
          ),
        ),

          //Text(resSearch.map((e) => e.name + ' ' + e.country,).toString()),
          if(resSearch.isNotEmpty && searchText.length>2)
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: resSearch.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                        height: 50,
                        child: CityListItem(city: resSearch[index],)
                    ),
                    if(index<resSearch.length-1)
                      const Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                  ]
                );
              }
          )
          else
            const Text("No result")
        ],
      ),
    );
  }
}

class CityListItem extends ConsumerWidget {
  const CityListItem({super.key, required this.city});

  final City city;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var languageCode = WidgetsBinding.instance.window.locale.languageCode;
    var cityName = city.localNames != null && city.localNames!.containsKey(languageCode)
        ? city.localNames![languageCode]
        : city.name;
    return Stack(
      children: [Row(
        children: [
          Expanded(child: Center(child: Text('$cityName'))),
          Expanded(child: Center(child: Text(countryCodeToFlag(city.country), style: TextStyle(fontSize: 30),)))
      ],),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 60,
            height: 32,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              ),
              onPressed: () {
                ref.read(_controllerPod.notifier).saveCity(city).whenComplete(() {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Added to favorite"),
                  ));
                },);
              },
              child: const Text(
                '+',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ),
      ]
    );
  }
}
