import 'package:bloc/bloc.dart';
import 'package:flutter_task/data/models/drink_model.dart';
import 'package:flutter_task/data/repository/repo.dart';
import 'package:meta/meta.dart';

part 'drink_state.dart';

class DrinkCubit extends Cubit<DrinkState> {
  final DrinkRepository drinkRepository;
  List<DrinkModel> drinks = [];
  DrinkCubit(this.drinkRepository) : super(DrinkInitial());


  List<DrinkModel> getAllDrinks() {
    drinkRepository.getAllDrinks().then((drinks) {
      emit(DrinkLoaded(drinks));
      this.drinks = drinks;
    });
    return drinks;
  }
}
