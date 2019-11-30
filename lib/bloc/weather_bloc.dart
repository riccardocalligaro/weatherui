import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:weather_app/data/weather_repository.dart';
import './bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  @override
  WeatherState get initialState => WeatherNotLoaded();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is FetchWeatherForCity) {
      yield WeatherLoading();
      try {
        final weather =
            await WeatherRepository().fetchWeatherForCity(event.cityName);
        yield WeatherLoaded(weather);
      } catch (e) {
        yield WeatherError(e.toString());
      }
    }
  }
}
