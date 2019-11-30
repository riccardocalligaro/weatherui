import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  BlocProvider.of<WeatherBloc>(context)
                      .add(FetchWeatherForCity('London'));
                },
              ),
              Expanded(child: new TopSection()),
              Expanded(child: new MainSection()),
            ],
          ),
        ),
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  const MainSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      child: Padding(
        padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sunday',
              style: TextStyle(fontSize: 24),
            ),
            Container(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Sunrise',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '06.11',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Wind',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '33 n/s SW',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Sunrise',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Text(
                  '06.11',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('2 Novembre 2019')
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Milan, Italy')
                    ],
                  ),
                ),
              ],
            )
          ],
        )),
      ),
      style: TextStyle(
          color: Colors.white,
          fontFamily: 'San Francisco',
          fontWeight: FontWeight.w800),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.fromLTRB(32, 104, 32, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 42,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BlocBuilder<WeatherBloc, WeatherState>(
                    builder: (context, state) {
                      if (state is WeatherLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is WeatherLoaded) {
                        final _temp = (state.weather.main.temp - 273.15).toStringAsFixed(1);
                        return Text(
                          '${_temp}°C',
                          style: TextStyle(
                              fontSize: 80,
                              fontFamily: 'San Francisco',
                              fontWeight: FontWeight.w800),
                        );
                      } else if (state is WeatherLoaded) {
                        return Center(
                          child: Text('error'),
                        );
                      }
                    },
                  ),
                  Text(
                    'Sunny',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            )
          ],
        ),
        // child: ,
      ),
    );
  }
}
