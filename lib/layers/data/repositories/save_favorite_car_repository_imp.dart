import '../../domain/repositories/save_favorite_car_repository.dart';
import '../../domain/entities/car_entity.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.value > 0;
  }
}
