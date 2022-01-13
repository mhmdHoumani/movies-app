import 'package:first_project/Model/MovieModel.dart';

class WeatherForecastModel extends MovieModel {
  WeatherForecastModel(String movieTitle, int duration, String date,
      String imagePath, List<String> images)
      : super(movieTitle, duration, date, imagePath, images);

  printTitle(){
    print(this.getTitle);
  }
}
