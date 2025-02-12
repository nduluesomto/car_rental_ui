import 'package:car_rental_ui/data/models/car_model.dart';

abstract class CarRepositories {
  List<CarModel> getCarDetails();
}