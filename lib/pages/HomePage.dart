import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            children: <Widget>[
              new TopSection(),
              new MainSection(),
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

            // decoration: BoxDecoration(color: Colors.green),
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
                      SizedBox(width: 8,),
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
                      SizedBox(width: 8,),
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
            /*
            RichText(
              text: TextSpan(
                text: 'Rome, ',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'San Francisco',
                    fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Italy',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontFamily: 'San Francisco')),
                ],
              ),
            ),
            */
            Container(
              height: 42,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '25°',
                    style: TextStyle(
                        fontSize: 100,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.w800),
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
