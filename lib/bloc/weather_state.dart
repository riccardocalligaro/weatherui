import 'package:meta/meta.dart';
import 'package:weather_app/models/weather_model.dart';

@immutable
abstract class WeatherState {}

class WeatherNotLoaded extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded(this.weather);
}

class WeatherError extends WeatherState {
  final String error;

  WeatherError(this.error);
}
