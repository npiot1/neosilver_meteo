library saved_cities;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neosilver_meteo/application/saved_cities_screen/saved_cities_state.dart';
import 'package:neosilver_meteo/framework/repository/weather_data.dart';

import '../../framework/models/city.dart';
import '../../framework/models/weather_data.dart';
import '../../framework/repository/app.dart';
import '../../framework/utils/flag.dart';
import '../weather_data/weather_data.dart';

part 'saved_cities_controller.dart';

class SavedCities extends ConsumerWidget {
  const SavedCities({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    List<City> savedCities = ref.watch(_controllerPod.select((value) => value.cities));

    if(savedCities.isEmpty) {
      return const Center(child: Text("No city saved !", style: TextStyle(fontSize: 24),),);
    } else {
      return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemCount: savedCities.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
                children: [
                  SizedBox(
                      height: 50,
                      child: GestureDetector(
                          onTap: () {
                            showDialog(context: context, builder: (context) {
                              return FutureBuilder(
                                  future: ref.read(_controllerPod.notifier).getCityData(savedCities[index]),
                                  builder: (context, snapshot) {
                                    if(snapshot.hasData) {
                                      return WeatherDataWidget(weatherData: snapshot.data!, name: savedCities[index].name);
                                    } else {
                                      return const SizedBox(height: 50, width: 50, child: Center(child: CircularProgressIndicator()));
                                    }
                                  },);
                            },);
                          },
                          child: Container(color: Colors.white, child: SavedCityItem(city: savedCities[index],)))
                  ),
                  if(index<savedCities.length-1)
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                ]
            );
          }
      );
    }
  }
}

class SavedCityItem extends ConsumerWidget {
  const SavedCityItem({super.key, required this.city});

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
            Expanded(child: Center(child: Text(countryCodeToFlag(city.country), style: const TextStyle(fontSize: 30),)))
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
                  ref.read(_controllerPod.notifier).deleteCity(city).whenComplete(() {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("City removed"),
                    ));
                  },);
                },
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ),
        ]
    );
  }
}


