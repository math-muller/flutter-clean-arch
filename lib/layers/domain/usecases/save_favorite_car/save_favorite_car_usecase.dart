import 'package:clean_arq/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarUsecase {
  Future<bool> call(CarEntity carEntity);
}
