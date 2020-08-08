// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodState _$_$_FoodStateFromJson(Map<String, dynamic> json) {
  return _$_FoodState(
    foods: (json['foods'] as List)
        ?.map(
            (e) => e == null ? null : Food.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_FoodStateToJson(_$_FoodState instance) =>
    <String, dynamic>{
      'foods': instance.foods,
    };
