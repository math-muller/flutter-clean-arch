class CarEntity {
  String plate;
  int numberOfDoors;
  double value;

  CarEntity({
    required this.plate,
    required this.numberOfDoors,
    required this.value,
  });

  double get realValue {
    return value * numberOfDoors;
  }
}
