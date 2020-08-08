// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Food _$_$_FoodFromJson(Map<String, dynamic> json) {
  return _$_Food(
    id: json['id'] as int,
    imageUrl: json['imageUrl'] as String,
    name: json['name'] as String,
    price: json['price'] as num,
    rating: json['rating'] as num,
    category: json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'price': instance.price,
      'rating': instance.rating,
      'category': instance.category?.toJson(),
    };
