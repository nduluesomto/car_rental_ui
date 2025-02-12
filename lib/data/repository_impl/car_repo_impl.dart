import 'package:car_rental_ui/data/datasource/car_offline_datasource.dart';
import 'package:car_rental_ui/data/models/car_model.dart';
import 'package:car_rental_ui/domain/repository/car_repositories.dart';

class CarRepoImpl extends CarRepositories{
  @override
  List<CarModel> getCarDetails() {
    return carDetails;
  }
}