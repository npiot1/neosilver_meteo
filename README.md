# Flutter Weather App 🌤️

A simple yet functional Flutter weather application built to demonstrate the integration of several essential Flutter libraries and practices.

This app uses the **OpenWeatherMap API** to fetch current weather data based on:
- **User's current location**
- **User's saved cities**

---

## ✨ Features

- View weather data by current location or search
- Save and delete favorite cities
- Local caching using `SharedPreferences`
- Clean architecture with `Riverpod` state management
- Immutable data models with `Freezed`
- HTTP requests using `Dio`
- Environment configuration using `flutter_dotenv`

---

## 🧰 Technologies & Libraries

| Library           | Usage                                        |
|------------------|----------------------------------------------|
| `freezed`        | Immutable data classes & union types         |
| `riverpod`       | State management                             |
| `dio`            | API calls to OpenWeatherMap                  |
| `shared_preferences` | Local storage of favorite cities        |
| `location`        | Show user's current position weather            |
| `flutter_dotenv`  | Managing environment variables (.env file)  |

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/npiot1/openweather_flutter.git
cd openweather_flutter
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Setup environment variables

At the root of the project, create a `.env` file:

```env
API_KEY=your_api_key_here
API_URL=https://api.openweathermap.org/data/2.5/
API_URL_GEO=https://api.openweathermap.org/geo/1.0/
```

You can get your API key by signing up at [https://openweathermap.org/](https://openweathermap.org/).

### 4. Generate files

Run the following command to generate Freezed and other related files:

```bash
dart run build_runner build
```

---

## 📱 Screenshots

Here are some preview screens of the app in action:

<p align="center">
  <img src="https://github.com/npiot1/openweather_flutter/blob/42449de34def95d9fb3e62a40e104ec6d1a34113/assets/readme/home.png?raw=true" width="400"/>
  <img src="https://github.com/npiot1/openweather_flutter/blob/42449de34def95d9fb3e62a40e104ec6d1a34113/assets/readme/city_weather_detail.png?raw=true" width="400"/>
  <img src="https://github.com/npiot1/openweather_flutter/blob/42449de34def95d9fb3e62a40e104ec6d1a34113/assets/readme/add_city.png?raw=true" width="400"/>
</p>


---

## 📦 Build and Run

To run the app on your device or emulator:

```bash
flutter run
```

---

## ✅ TODO

- [ ] Current language support
- [ ] Rearrange cities in home screen
- [ ] Better UI, more informations on list items

---

## 📝 License

This project is released under the MIT License. Feel free to use, modify, and share it as needed.
