// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryState _$_$_CategoryStateFromJson(Map<String, dynamic> json) {
  return _$_CategoryState(
    categories: (json['categories'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CategoryStateToJson(_$_CategoryState instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'category': instance.category,
    };
