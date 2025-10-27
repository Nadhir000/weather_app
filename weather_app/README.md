# Weather App

A Flutter weather application that displays weather information using API integration and Riverpod for state management.

## Project Structure

```
weather_app
├── lib
│   ├── main.dart                # Entry point of the application
│   ├── pages
│   │   └── Home_Page.dart       # Home page displaying weather information
│   ├── models
│   │   └── weather.dart          # Weather model class
│   ├── services
│   │   └── weather_api.dart      # Service for fetching weather data from API
│   ├── providers
│   │   └── weather_provider.dart  # Riverpod provider for managing weather state
│   ├── widgets
│   │   └── weather_card.dart      # Widget for displaying weather information
│   └── utils
│       └── constants.dart         # Constants used throughout the app
├── test
│   └── providers
│       └── weather_provider_test.dart # Unit tests for WeatherProvider
├── pubspec.yaml                  # Flutter project configuration
├── analysis_options.yaml         # Dart analyzer configuration
├── .gitignore                    # Files to ignore in version control
└── README.md                     # Project documentation
```

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd weather_app
   ```

2. **Install dependencies:**
   ```
   flutter pub get
   ```

3. **Run the application:**
   ```
   flutter run
   ```

## Usage

- The application fetches weather data from a specified API and displays it on the home page.
- The user can view current weather conditions, temperature, sunrise and sunset times, and more.

## Dependencies

- Flutter
- Riverpod

## License

This project is licensed under the MIT License.