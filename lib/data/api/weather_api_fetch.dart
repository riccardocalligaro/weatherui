import 'package:chopper/chopper.dart';

part 'weather_api_fetch.chopper.dart';

@ChopperApi(baseUrl: '/data/2.5')
abstract class WeatherFetchApiData extends ChopperService {
  @Get(path: 'weather?q={cityName}&appid=c87ca36734f091d09c07bf962f8d530b')
  Future<Response> getWeatherFromCity(@Path('cityName') String cityName);

  static WeatherFetchApiData create() {
    final client = ChopperClient(
        baseUrl: 'https://api.openweathermap.org/',
        services: [_$WeatherFetchApiData()],
        converter: JsonConverter());
    return _$WeatherFetchApiData(client);
  }
}
