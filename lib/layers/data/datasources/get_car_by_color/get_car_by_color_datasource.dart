import 'package:clean_arq/layers/data/dto/car_dto.dart';

abstract class GetCarByColorDatasource {
  CarDto call(String color);
}
