import '../../entities/car_entity.dart';

abstract class GetCarByColorUseCase {
  CarEntity call(String color);
}
