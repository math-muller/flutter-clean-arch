import 'package:clean_arq/layers/data/datasources/get_car_by_color/local/local_get_car_by_color_datasource.dart';
import 'package:clean_arq/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_arq/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean_arq/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase_imp.dart';
import 'package:clean_arq/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:clean_arq/layers/presentation/controllers/car_controller.dart';
import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  CarPage({Key? key}) : super(key: key);

  final CarController controller = CarController(
    GetCarByColorUsecaseImp(
      GetCarByColorRepositoryImp(
        LocalGetCarByColorDatasource(),
      ),
    ),
    SaveFavoriteCarUsecaseImp(
      SaveFavoriteCarRepositoryImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.car.plate),
      ),
    );
  }
}
