import 'package:food_drive/model/category/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'category_state.freezed.dart';
part 'category_state.g.dart';

@freezed
@immutable
abstract class CategoryState implements _$CategoryState {
  @JsonSerializable()
  const CategoryState._();

  @JsonSerializable()
  const factory CategoryState({
    @required List<Category> categories,
    @required Category category,
  }) = _CategoryState;

  factory CategoryState.fromJson(Map<String, dynamic> json) => _$CategoryStateFromJson(json);
}
