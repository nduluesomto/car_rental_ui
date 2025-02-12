import 'package:car_rental_ui/data/repository_impl/car_repo_impl.dart';
import 'package:car_rental_ui/domain/repository/car_repositories.dart';
import 'package:car_rental_ui/domain/usecase/car_usecase.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  //Repository
  locator.registerSingleton<CarRepositories>(CarRepoImpl());

  //UseCase
  locator.registerSingleton<FetchCarData>(FetchCarData());
}
