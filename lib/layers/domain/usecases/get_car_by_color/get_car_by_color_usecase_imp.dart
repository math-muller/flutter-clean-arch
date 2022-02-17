import 'package:clean_arq/layers/domain/repositories/get_car_by_color_repository.dart';

import '../../entities/car_entity.dart';

import 'get_car_by_color_usecase.dart';

class GetCarByColorUsecaseImp implements GetCarByColorUseCase {
  final GetCarByColorRepository _getCarByColorRepository;

  GetCarByColorUsecaseImp(this._getCarByColorRepository);

  @override
  CarEntity call(String color) {
    return _getCarByColorRepository(color);
  }
}
