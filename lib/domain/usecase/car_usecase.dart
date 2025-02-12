import 'package:car_rental_ui/data/models/car_model.dart';
import 'package:car_rental_ui/domain/repository/car_repositories.dart';
import 'package:car_rental_ui/utils/di.dart';

class FetchCarData {
  FetchCarData();

  List<CarModel> call() {
    return locator<CarRepositories>().getCarDetails();
  }
}
