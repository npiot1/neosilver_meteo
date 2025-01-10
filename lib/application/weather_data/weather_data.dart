import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../framework/models/weather_data.dart';

class WeatherDataWidget extends StatelessWidget {
  const WeatherDataWidget({super.key, required this.weatherData, required this.name});

  final WeatherData weatherData;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Weather in $name"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildLocationSection(),
            const SizedBox(height: 10),
            _buildWeatherSection(),
            const SizedBox(height: 10),
            _buildTemperatureSection(),
            const SizedBox(height: 10),
            _buildWindSection(),
            const SizedBox(height: 10),
            _buildOtherDetailsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationSection() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Name: ${weatherData.name}, ${weatherData.sys?.country}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Latitude: ${weatherData.coord!.lat}, Longitude: ${weatherData
                .coord!.lon}", style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherSection() {
    final weather = weatherData.weather[0];
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Weather",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              children: [
                Image.network(
                  "http://openweathermap.org/img/wn/${weather.icon}@2x.png",
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Condition: ${weather.main}",
                        style: const TextStyle(fontSize: 16)),
                    Text("Description: ${weather.description}",
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTemperatureSection() {
    final main = weatherData.main;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Temperature",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Current: ${main?.temp} K", style: TextStyle(fontSize: 16)),
            Text("Feels Like: ${main?.feelsLike} K",
                style: const TextStyle(fontSize: 16)),
            Text("Min: ${main?.tempMin} K, Max: ${main?.tempMax} K",
                style: const TextStyle(fontSize: 16)),
            Text("Humidity: ${main?.humidity}%", style: const TextStyle(fontSize: 16)),
            Text("Pressure: ${main?.pressure} hPa",
                style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildWindSection() {
    final wind = weatherData.wind;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Wind",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Speed: ${wind?.speed} m/s", style: TextStyle(fontSize: 16)),
            Text("Direction: ${wind?.deg}°", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildOtherDetailsSection() {
    final sys = weatherData.sys;
    final sunrise = DateTime.fromMillisecondsSinceEpoch(
        sys!.sunrise * 1000, isUtc: true);
    final sunset = DateTime.fromMillisecondsSinceEpoch(
        sys.sunset * 1000, isUtc: true);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Other Details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Visibility: ${weatherData.visibility} m",
                style: const TextStyle(fontSize: 16)),
            Text("Sunrise: ${DateFormat('HH:mm').format(sunrise)} UTC",
                style: const TextStyle(fontSize: 16)),
            Text("Sunset: ${DateFormat('HH:mm').format(sunset)} UTC",
                style: const TextStyle(fontSize: 16)),
            Text("Timezone: ${weatherData.timezone} seconds",
                style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
