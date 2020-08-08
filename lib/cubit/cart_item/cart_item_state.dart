import 'package:food_drive/model/cart_item/cart_item.dart';
import 'package:food_drive/model/food/food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cart_item_state.freezed.dart';
part 'cart_item_state.g.dart';

@freezed
@immutable
abstract class CartItemState implements _$CartItemState {
  @JsonSerializable()
  CartItemState._();

  @JsonSerializable()
  factory CartItemState({
    @required List<CartItem> cartItems,
    @required @nullable LastAddedFood lastAddedFood,
  }) = _CartItemState;

  factory CartItemState.fromJson(Map<String, dynamic> json) => _$CartItemStateFromJson(json);

  @late
  num get delivery => cartItems.isEmpty ? 0 : 5;

  @late
  num get subtotal => cartItems.fold(0, (previousValue, element) => previousValue + (element.quantity * element.food.price));

  @late
  num get total => subtotal + delivery;
}

@freezed
@immutable
abstract class LastAddedFood implements _$LastAddedFood {
  @JsonSerializable()
  LastAddedFood._();

  @JsonSerializable()
  factory LastAddedFood({
    @required Food food,
    @required DateTime dateTime,
  }) = _LastAddedFood;

  factory LastAddedFood.fromJson(Map<String, dynamic> json) => _$LastAddedFoodFromJson(json);
}
