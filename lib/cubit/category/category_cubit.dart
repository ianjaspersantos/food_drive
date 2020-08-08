import 'package:bloc/bloc.dart';
import 'package:food_drive/cubit/category/category_state.dart';
import 'package:food_drive/model/category/category.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryState(categories: categories, category: categories.first));

  void handleCategoryTileTap(Category category) {
    emit(state.copyWith.call(category: category));
  }
}
