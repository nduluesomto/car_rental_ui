import 'package:bloc/bloc.dart';
import 'package:car_rental_ui/data/models/car_model.dart';
import 'package:car_rental_ui/domain/usecase/car_usecase.dart';
import 'package:car_rental_ui/utils/di.dart';
import 'package:flutter/material.dart';

part 'cars_state.dart';

class CarsCubit extends Cubit<CarsState> {
  final PageController pageController = PageController();

  CarsCubit() : super(CarsInitial());

  void loadCarData() {
    try {
      emit(CarsLoading());

      final carsData = locator<FetchCarData>().call();
      emit(CarsLoaded(carsData: carsData));
    } catch (e) {
      emit(LoadingError(errorMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
