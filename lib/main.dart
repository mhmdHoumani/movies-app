import 'package:flutter/material.dart';

import 'UI/BizCard.dart';
import 'UI/movie_ui/Movie.dart';
import 'parsing_json/json_parsing.dart';
import 'parsing_json/json_parsing_map.dart';
import 'weather_forecast/WeatherForecast.dart';

ThemeData _theme = _themeBuilder();

ThemeData _themeBuilder() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.dark,
    accentColor: Colors.green[900],
    primaryColor: Colors.amber[600],
    scaffoldBackgroundColor: Colors.purple,
    backgroundColor: Colors.blue[900],
    textTheme: _appTextTheme(base.textTheme),
  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline1: base.headline1!.copyWith(
          fontWeight: FontWeight.w900,
        ),
        subtitle1: base.subtitle1!.copyWith(
          fontSize: 20,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        bodyText2: base.bodyText1!.copyWith(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
        ),
        button: base.button!.copyWith(
            backgroundColor: Colors.blue.withOpacity(0.1),
            letterSpacing: 3,
            fontSize: 20,
            fontWeight: FontWeight.w600),
      )
      .apply(fontFamily: "Cursive");
}

void main() {
  //runApp(new MaterialApp(theme: _theme, home: BizCard()));
  runApp(new MaterialApp(home: Movie()));
}

//api.openweathermap.org/data/2.5/forecast/daily?q=London&units=metric&cnt=7&appid=a5f69a482a4d9a47385a916ef0de6e90
