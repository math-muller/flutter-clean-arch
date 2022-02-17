import 'package:clean_arq/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean_arq/layers/domain/entities/car_entity.dart';
import 'package:clean_arq/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_arq/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:test/test.dart';

void main() {
  late SaveFavoriteCarRepository saveFavoriteCarRepository;
  late SaveFavoriteCarUsecase useCase;

  late CarEntity carEntity;

  setUp(() {
    saveFavoriteCarRepository = SaveFavoriteCarRepositoryImp();
    useCase = SaveFavoriteCarUsecaseImp(saveFavoriteCarRepository);

    carEntity = CarEntity(plate: 'ABC123', numberOfDoors: 2, value: 1);
  });

  test('Should return true on save success', () async {
    var result = await useCase(carEntity);

    expect(result, true);
  });

  test('Should failure when value is less than or equal to zero', () async {
    carEntity.value = 0;

    var result = await useCase(carEntity);

    expect(result, false);
  });
}
