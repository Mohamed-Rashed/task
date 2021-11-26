import 'package:flutter_task/data/models/drink_model.dart';
import 'package:flutter_task/data/web_services/drink_web_service.dart';

class DrinkRepository {
  late final DrinkWebServices drinkWebServices;
  DrinkRepository(this.drinkWebServices);
  Future<List<DrinkModel>> getAllDrinks() async {
    final genres = await drinkWebServices.getAllDrinks();
    return genres.map((genre) => DrinkModel.fromJson(genre)).toList();
  }
}