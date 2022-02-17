import 'package:clean_arq/layers/domain/entities/car_entity.dart';
import 'package:clean_arq/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_arq/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class SaveFavoriteCarUsecaseImp implements SaveFavoriteCarUsecase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUsecaseImp(this._saveFavoriteCarRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    return await _saveFavoriteCarRepository(carEntity);
  }
}
