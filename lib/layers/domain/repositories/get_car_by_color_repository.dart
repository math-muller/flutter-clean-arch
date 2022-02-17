import 'package:clean_arq/layers/domain/entities/car_entity.dart';

abstract class GetCarByColorRepository {
  CarEntity call(String color);
}
