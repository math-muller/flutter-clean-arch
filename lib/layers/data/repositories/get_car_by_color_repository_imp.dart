import 'package:clean_arq/layers/data/datasources/get_car_by_color/get_car_by_color_datasource.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_car_by_color_repository.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  final GetCarByColorDatasource _getCarByColorDatasource;

  GetCarByColorRepositoryImp(this._getCarByColorDatasource);

  @override
  CarEntity call(String color) {
    return _getCarByColorDatasource(color);
  }
}
