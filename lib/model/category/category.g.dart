// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$_$_CategoryFromJson(Map<String, dynamic> json) {
  return _$_Category(
    id: json['id'] as int,
    emojiUrl: json['emojiUrl'] as String,
    emoji: json['emoji'] as String,
    name: json['name'] as String,
    color: json['color'] as String,
    accentColor: json['accentColor'] as String,
  );
}

Map<String, dynamic> _$_$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emojiUrl': instance.emojiUrl,
      'emoji': instance.emoji,
      'name': instance.name,
      'color': instance.color,
      'accentColor': instance.accentColor,
    };
