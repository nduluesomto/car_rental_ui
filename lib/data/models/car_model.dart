class CarModel {
  final String carModel;
  final String carImage;
  final String shortDesc;
  final double hourlyCost;
  final double dayCost;
  final String carRegNo;
  final String engineModel;
  final double? compressionRatio;
  final String? displacement;
  final String? fuelType;
  final String? fuelTankEquipment;
  final int cylinders;
  final double? maximumPower;

  CarModel(
      {required this.carModel,
      required this.carImage,
      required this.hourlyCost,
      required this.shortDesc,
      required this.dayCost,
      required this.carRegNo,
      required this.displacement,
      required this.engineModel,
      this.compressionRatio,
      this.fuelType,
      this.fuelTankEquipment,
      required this.cylinders,
      this.maximumPower});
}
