part of 'cars_cubit.dart';

@immutable
sealed class CarsState {
  const CarsState();
}

final class CarsInitial extends CarsState {}

final class CarsLoading extends CarsState {}

final class CarsLoaded extends CarsState {
  final List<CarModel> carsData;

  const CarsLoaded({required this.carsData});
}

final class LoadingError extends CarsState {
  final String errorMessage;

  const LoadingError({required this.errorMessage});
}
