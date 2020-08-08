import 'package:food_drive/model/food/food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
@immutable
abstract class CartItem implements _$CartItem {
  @JsonSerializable()
  const CartItem._();

  @JsonSerializable()
  const factory CartItem({
    @required int quantity,
    @required Food food,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}
