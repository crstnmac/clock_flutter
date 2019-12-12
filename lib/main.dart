import 'package:flutter/material.dart';
import 'package:Fluck/clock.dart';
import 'package:Fluck/clock_text.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fluck',
      theme: new ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new AppClock()
    );
  }
}

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Clock(
              circleColor: Colors.lightGreen,
              showBellsAndLegs: false,
              bellColor: Colors.green,
              clockText: ClockText.arabic,
              showHourHandleHeartShape: false,
            ),
          ],
        ),
      ),
    );
  }
}
