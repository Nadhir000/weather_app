//! providers
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/models/weather.dart';

final weatherServiceProvider = Provider<WeatherService>(
  (ref) => WeatherService(),
);

final weatherProvider = FutureProvider.family<Weather, String>((ref, city) {
  final svc = ref.read(weatherServiceProvider);
  return svc.fetchWeatherByCity(city);
});

final cityProvider = StateProvider<String>((ref) => 'Algiers');
