import 'package:clean_arq/layers/domain/entities/car_entity.dart';
import 'package:test/test.dart';

void main() {
  late CarEntity carEntity;

  setUp(() {
    carEntity = CarEntity(plate: 'ABC123', numberOfDoors: 2, value: 1000);
  });

  test('Should hope the entity is not null', () {
    expect(carEntity, isNotNull);
  });

  test('Should expect the value of car is 2000', () {
    var expectedResult = 2000;

    expect(carEntity.realValue, expectedResult);
  });

  test('Should expect the value of car is 0', () {
    carEntity.numberOfDoors = 0;
    
    var expectedResult = 0.0;

    expect(carEntity.realValue, expectedResult);
  });
}
