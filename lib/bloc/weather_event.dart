import 'package:meta/meta.dart';

@immutable
abstract class WeatherEvent {}

class FetchWeatherForCity extends WeatherEvent {
  final String cityName;

  FetchWeatherForCity(this.cityName);
}
