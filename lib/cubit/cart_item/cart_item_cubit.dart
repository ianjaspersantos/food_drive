import 'package:bloc/bloc.dart';
import 'package:food_drive/cubit/cart_item/cart_item_state.dart';
import 'package:food_drive/model/cart_item/cart_item.dart';
import 'package:food_drive/model/food/food.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemState(cartItems: [], lastAddedFood: null));

  List<CartItemState> histories = [];
  bool isUndo = false;

  @override
  void onChange(Change<CartItemState> change) {
    super.onChange(change);
    if (isUndo) {
      isUndo = false;
    } else {
      histories.add(change.currentState);
    }
  }

  void addToCart(Food food) {
    final index = state.cartItems.indexWhere((item) => item.food.id == food.id);

    if (index == -1) {
      final cartItems = List<CartItem>.from(state.cartItems);
      final cartItem = CartItem(quantity: 1, food: food);

      cartItems.add(cartItem);
      emit(state.copyWith.call(
        cartItems: cartItems,
        lastAddedFood: LastAddedFood(food: food, dateTime: DateTime.now()),
      ));
    } else {
      final cartItems = List<CartItem>.from(state.cartItems);
      final cartItem = cartItems[index];

      increment(cartItem);
    }
  }

  void increment(CartItem cartItem) {
    final index = state.cartItems.indexWhere((element) => element == cartItem);
    final cartItems = List<CartItem>.from(state.cartItems);
    final quantity = cartItem.quantity + 1;

    if (quantity <= 10) {
      cartItems[index] = cartItem.copyWith.call(quantity: quantity);
      emit(state.copyWith.call(
        cartItems: cartItems,
        lastAddedFood: LastAddedFood(food: cartItem.food, dateTime: DateTime.now()),
      ));
    }
  }

  void decrement(CartItem cartItem) {
    final index = state.cartItems.indexWhere((element) => element.food.id == cartItem.food.id);
    final cartItems = List<CartItem>.from(state.cartItems);
    final quantity = cartItem.quantity - 1;

    if (quantity >= 1) {
      cartItems[index] = cartItem.copyWith.call(quantity: quantity);
      emit(state.copyWith.call(
        cartItems: cartItems,
      ));
    } else {
      cartItems.removeAt(index);
      emit(state.copyWith.call(
        cartItems: cartItems,
      ));
    }
  }

  void undo() {
    isUndo = true;
    emit(histories.removeLast().copyWith.call(lastAddedFood: state.lastAddedFood));
  }
}
