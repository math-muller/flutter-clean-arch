import 'package:clean_arq/layers/data/datasources/get_car_by_color/get_car_by_color_datasource.dart';
import 'package:clean_arq/layers/data/dto/car_dto.dart';

class LocalGetCarByColorDatasource implements GetCarByColorDatasource {
  final jsonVermelho = {
    'plate': 'ABC123',
    'numberOfDoors': 4,
    'value': 5000.00,
  };

  final jsonAny = {
    'plate': 'QWE',
    'numberOfDoors': 2,
    'value': 2000.00,
  };

  @override
  CarDto call(String color) {
    if (color.contains('vermelho')) {
      return CarDto.fromMap(jsonVermelho);
    }

    return CarDto.fromMap(jsonAny);
  }
}
