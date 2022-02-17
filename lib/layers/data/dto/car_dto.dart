import 'package:clean_arq/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  String plate;
  int numberOfDoors;
  double value;

  CarDto({
    required this.plate,
    required this.numberOfDoors,
    required this.value,
  }) : super(value: value, numberOfDoors: numberOfDoors, plate: plate);

  Map toJson() {
    return {
      'plate': this.plate,
      'numberOfDoors': this.numberOfDoors,
      'value': this.value,
    };
  }

  static CarDto fromMap(Map map) {
    return CarDto(
      plate: map['plate'],
      numberOfDoors: map['numberOfDoors'],
      value: map['value'],
    );
  }
}
