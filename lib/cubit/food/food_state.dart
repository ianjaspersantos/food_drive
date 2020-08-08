import 'package:food_drive/model/food/food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'food_state.freezed.dart';
part 'food_state.g.dart';

@freezed
@immutable
abstract class FoodState implements _$FoodState {
  @JsonSerializable()
  const FoodState._();

  @JsonSerializable()
  const factory FoodState({
    @required List<Food> foods,
  }) = _FoodState;

  factory FoodState.fromJson(Map<String, dynamic> json) => _$FoodStateFromJson(json);
}
