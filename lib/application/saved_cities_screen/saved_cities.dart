library saved_cities;

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';

import 'package:open_weather_flutter/application/saved_cities_screen/saved_cities_state.dart';
import 'package:open_weather_flutter/framework/repository/weather_data.dart';

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
    List<City> savedCities =
        ref.watch(_controllerPod.select((value) => value.cities));

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            onPressed: () async {
              Location location = new Location();

              bool serviceEnabled;
              PermissionStatus permissionGranted;
              LocationData locationData;

              serviceEnabled = await location.serviceEnabled();
              if (!serviceEnabled) {
                serviceEnabled = await location.requestService();
                if (!serviceEnabled) {
                  return;
                }
              }

              permissionGranted = await location.hasPermission();
              if (permissionGranted == PermissionStatus.denied) {
                permissionGranted = await location.requestPermission();
                if (permissionGranted != PermissionStatus.granted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text(
                            "Location permission denied, please enable it in settings.")),
                  );
                  return;
                }
              }

              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const Center(child: CircularProgressIndicator());
                },
              );

              try {
                locationData = await location
                    .getLocation()
                    .timeout(const Duration(seconds: 60));
              } on TimeoutException {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text("Location timed out. Try again.")),
                );
                return;
              }

              Navigator.of(context).pop();
              if (locationData.latitude != null &&
                  locationData.longitude != null) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return FutureBuilder(
                      future: ref.read(_controllerPod.notifier).getLocationData(
                          lon: locationData.longitude!,
                          lat: locationData.latitude!),
                      builder: (context, snapshot) {
                        if (snapshot.error != null) {
                          debugPrint(snapshot.stackTrace!.toString());
                          return Scaffold(
                              appBar: AppBar(
                                title: const Text("Error"),
                              ),
                              body: Text(snapshot.stackTrace!.toString()));
                        } else if (snapshot.hasData) {
                          return WeatherDataWidget(
                              weatherData: snapshot.data!,
                              name: 'Current location');
                        } else {
                          return const SizedBox(
                              height: 50,
                              width: 50,
                              child:
                                  Center(child: CircularProgressIndicator()));
                        }
                      },
                    );
                  },
                );
              }
            },
            child: const Text(
              'View my location',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
        savedCities.isEmpty
            ? const Padding(
                padding: EdgeInsets.only(top: 32),
                child: Center(
                    child: Text(
                  "No city saved !",
                  style: TextStyle(fontSize: 24),
                )),
              )
            : ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: savedCities.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return FutureBuilder<WeatherData>(
                                future: ref
                                    .read(_controllerPod.notifier)
                                    .getLocationData(city: savedCities[index]),
                                builder: (context, snapshot) {
                                  if (snapshot.error != null) {
                                    debugPrint(snapshot.stackTrace!.toString());
                                    return Scaffold(
                                        appBar: AppBar(
                                          title: const Text("Error"),
                                        ),
                                        body: Text(
                                            snapshot.stackTrace!.toString()));
                                  } else if (snapshot.hasData) {
                                    return WeatherDataWidget(
                                        weatherData: snapshot.data!,
                                        name: savedCities[index].name);
                                  } else {
                                    return const SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Center(
                                            child:
                                                CircularProgressIndicator()));
                                  }
                                },
                              );
                            },
                          );
                        },
                        child: Container(
                            color: Colors.white,
                            child: SavedCityItem(
                              city: savedCities[index],
                            ))),
                  ]);
                }),
      ],
    );
  }
}

class SavedCityItem extends ConsumerWidget {
  const SavedCityItem({super.key, required this.city});

  final City city;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languageCode = Localizations.localeOf(context).languageCode;
    final cityName =
        city.localNames != null && city.localNames!.containsKey(languageCode)
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
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          tooltip: 'Remove city',
          onPressed: () {
            ref.read(_controllerPod.notifier).deleteCity(city).whenComplete(() {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("City removed")),
              );
            });
          },
        ),
      ),
    );
  }
}
