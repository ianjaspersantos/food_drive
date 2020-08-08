import 'package:bloc/bloc.dart';
import 'package:food_drive/cubit/cubit.dart';
import 'package:food_drive/model/category/category.dart';
import 'package:food_drive/model/food/food.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodState(foods: foodsData));

  void filterBy(Category category) {
    if (category.id == 1) {
      emit(state.copyWith.call(foods: List<Food>.from(foodsData, growable: false)));
    } else {
      emit(state.copyWith.call(foods: List<Food>.from(foodsData.where((food) => food.category.id == category.id), growable: false)));
    }
  }
}
