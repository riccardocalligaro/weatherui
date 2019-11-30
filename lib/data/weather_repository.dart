import 'package:chopper/chopper.dart';
import 'package:weather_app/data/api/weather_api_fetch.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherRepository {
  WeatherFetchApiData _finalWeatherRepository = WeatherFetchApiData.create();

  Future<Weather> fetchWeatherForCity(String cityName) async {
    final response = await _finalWeatherRepository.getWeatherFromCity(cityName);
    final weather = Weather.fromJson(response.body);
    return weather;
  }
}
