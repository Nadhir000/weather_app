import 'package:intl/intl.dart';

//! weather model
class Weather {
  final String cityName;
  final double temp;
  final String description;
  final double tempMin;
  final double tempMax;
  final int sunrise;
  final int sunset;
  final String icon;
  final double feelsLike;
  final int humidity;

  Weather({
    required this.cityName,
    required this.temp,
    required this.description,
    required this.tempMin,
    required this.tempMax,
    required this.sunrise,
    required this.sunset,
    required this.icon,
    required this.feelsLike,
    required this.humidity,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final main = json['main'] as Map<String, dynamic>;
    final sys = json['sys'] as Map<String, dynamic>;
    final weatherList = json['weather'] as List<dynamic>;
    final weather0 = weatherList.isNotEmpty
        ? weatherList[0] as Map<String, dynamic>
        : {};
    return Weather(
      cityName: json['name'] ?? '',
      temp: (main['temp'] as num).toDouble(),
      description: (weather0['main'] ?? '').toString(),
      tempMin: (main['temp_min'] as num).toDouble(),
      tempMax: (main['temp_max'] as num).toDouble(),
      sunrise: (sys['sunrise'] as num).toInt(),
      sunset: (sys['sunset'] as num).toInt(),
      icon: (weather0['icon'] ?? '').toString(),
      feelsLike: (main['feels_like'] as num).toDouble(),
      humidity: (main['humidity'] as num).toInt(),
    );
  }

  String formattedTimeFromEpoch(int epochSeconds) {
    final dt = DateTime.fromMillisecondsSinceEpoch(
      epochSeconds * 1000,
      isUtc: true,
    ).toLocal();
    return DateFormat.jm().format(dt);
  }

  String get sunriseString => formattedTimeFromEpoch(sunrise);
  String get sunsetString => formattedTimeFromEpoch(sunset);
}
