import 'package:clean_arq/layers/data/datasources/get_car_by_color/get_car_by_color_datasource.dart';
import 'package:clean_arq/layers/data/datasources/get_car_by_color/local/local_get_car_by_color_datasource.dart';
import 'package:clean_arq/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_arq/layers/domain/entities/car_entity.dart';
import 'package:clean_arq/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:clean_arq/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase_imp.dart';
import 'package:test/test.dart';

void main() {
  late GetCarByColorDatasource localDataSource;
  late GetCarByColorRepository getCarByColorRepository;
  late GetCarByColorUseCase useCase;

  setUp(() {
    localDataSource = LocalGetCarByColorDatasource();
    getCarByColorRepository = GetCarByColorRepositoryImp(localDataSource);
    useCase = GetCarByColorUsecaseImp(getCarByColorRepository);
  });

  test('Should return a instance of car when passing color', () {
    var result = useCase('azul');

    expect(result, isA<CarEntity>());
  });

  test('Should return a four door car', () {
    var result = useCase('vermelho');

    expect(result.numberOfDoors, 4);
  });

  test('Should return a two door car when any cor except red', () {
    var result = useCase('verde');

    expect(result.numberOfDoors, 2);
  });
}
