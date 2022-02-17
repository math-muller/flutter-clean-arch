import 'package:clean_arq/layers/data/datasources/get_car_by_color/get_car_by_color_datasource.dart';
import 'package:clean_arq/layers/data/datasources/get_car_by_color/local/local_get_car_by_color_datasource.dart';
import 'package:clean_arq/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_arq/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:test/test.dart';

void main() {
  late GetCarByColorDatasource localDataSource;
  late GetCarByColorRepository repository;

  setUp(() {
    localDataSource = LocalGetCarByColorDatasource();
    repository = GetCarByColorRepositoryImp(localDataSource);
  });

  test('Should return a car regardless of color', () {
    var result = repository('any');

    expect(result, isNotNull);
  });
}
