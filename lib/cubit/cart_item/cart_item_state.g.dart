// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemState _$_$_CartItemStateFromJson(Map<String, dynamic> json) {
  return _$_CartItemState(
    cartItems: (json['cartItems'] as List)
        ?.map((e) =>
            e == null ? null : CartItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lastAddedFood: json['lastAddedFood'] == null
        ? null
        : LastAddedFood.fromJson(json['lastAddedFood'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CartItemStateToJson(_$_CartItemState instance) =>
    <String, dynamic>{
      'cartItems': instance.cartItems,
      'lastAddedFood': instance.lastAddedFood,
    };

_$_LastAddedFood _$_$_LastAddedFoodFromJson(Map<String, dynamic> json) {
  return _$_LastAddedFood(
    food: json['food'] == null
        ? null
        : Food.fromJson(json['food'] as Map<String, dynamic>),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$_$_LastAddedFoodToJson(_$_LastAddedFood instance) =>
    <String, dynamic>{
      'food': instance.food,
      'dateTime': instance.dateTime?.toIso8601String(),
    };
