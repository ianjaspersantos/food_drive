// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItem _$_$_CartItemFromJson(Map<String, dynamic> json) {
  return _$_CartItem(
    quantity: json['quantity'] as int,
    food: json['food'] == null
        ? null
        : Food.fromJson(json['food'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'food': instance.food,
    };
