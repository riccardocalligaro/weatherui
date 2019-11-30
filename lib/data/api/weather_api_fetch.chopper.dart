// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_fetch.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$WeatherFetchApiData extends WeatherFetchApiData {
  _$WeatherFetchApiData([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = WeatherFetchApiData;

  Future<Response> getWeatherFromCity(String cityName) {
    final $url =
        '/data/2.5/weather?q=$cityName&appid=c87ca36734f091d09c07bf962f8d530b';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
