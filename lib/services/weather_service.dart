import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather.dart';

class WeatherService {
  //!OpenWeatherMap API key
  static const String _apiKey = '63d03ea14f3c9400f13a54449e91bbdc';

  Future<Weather> fetchWeatherByCity(String city) async {
    try {
      final uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=${Uri.encodeComponent(city)}&units=metric&appid=$_apiKey',
      );

      final res = await http.get(uri);

      if (res.statusCode != 200) {
        throw Exception(
          'Failed to load weather: ${res.statusCode} ${res.body}, la ville hadi jbtha mn 9a3k ??',
        );
      }

      final data = json.decode(res.body) as Map<String, dynamic>;
      return Weather.fromJson(data);
    } catch (e) {
      throw Exception('Error fetching weather: $e');
    }
  }
}
