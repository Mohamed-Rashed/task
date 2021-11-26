part of 'drink_cubit.dart';

@immutable
abstract class DrinkState {}

class DrinkInitial extends DrinkState {}

class DrinkLoaded extends DrinkState {
  final List<DrinkModel> drink;

  DrinkLoaded(this.drink);
}
