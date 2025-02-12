import 'package:car_rental_ui/data/models/car_model.dart';
import 'package:car_rental_ui/utils/constants/image_strings.dart';

final carDetails = [
  CarModel(
      carModel: 'Mazda CX-60',
      hourlyCost: 62,
      dayCost: 1500,
      engineModel: '2003 cc',
      carImage: AppImages.carOne,
      shortDesc: 'Begin the adventure of a lifetime',
      compressionRatio: 15.2,
      fuelType: '---',
      fuelTankEquipment: '---',
      displacement: '3283cc',
      cylinders: 3,
      maximumPower: 254, carRegNo: ''),
  CarModel(
      carModel: 'Mercedes-Benz GLC 300',
      hourlyCost: 70,
      dayCost: 1000,
      engineModel: '2.0L 4C',
      displacement: '---',
      carImage: AppImages.carTwo,
      shortDesc: '',
      compressionRatio: 15.2,
      fuelType: '---',
      fuelTankEquipment: '---',
      cylinders: 4,
      maximumPower: 254, carRegNo: ''

  ),
  CarModel(
      carModel: 'Toyota RAV4',
      hourlyCost: 60,
      dayCost: 900,
      engineModel: '2.5L 4C',
      carImage: AppImages.carThree,
      shortDesc: '',
      displacement: '---',
      compressionRatio: 15.2,
      fuelType: '---',
      fuelTankEquipment: '---',
      cylinders: 4,
      maximumPower: 254, carRegNo: ''
  ),
];
