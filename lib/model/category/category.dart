import 'package:flutter/material.dart';
import 'package:food_drive/extensions/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
@immutable
abstract class Category implements _$Category {
  @JsonSerializable(explicitToJson: true)
  const Category._();

  @JsonSerializable(explicitToJson: true)
  const factory Category({
    @required int id,
    @required String emojiUrl,
    @required String emoji,
    @required String name,
    @required String color,
    @required String accentColor,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

final categories = <Category>[
  Category(
    id: 1,
    emojiUrl: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/green-salad_1f957.png',
    emoji: ':green-salad:',
    name: 'All',
    color: Colors.green.toHex(),
    accentColor: Colors.green.shade50.toHex(),
  ),
  Category(
    id: 2,
    emojiUrl: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/slice-of-pizza_1f355.png',
    emoji: ':pizza:',
    name: 'Pizza',
    color: Colors.red.toHex(),
    accentColor: Colors.red.shade50.toHex(),
  ),
  Category(
    id: 3,
    emojiUrl: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/hamburger_1f354.png',
    emoji: ':hamburger:',
    name: 'Burger',
    color: Colors.orange.toHex(),
    accentColor: Colors.orange.shade50.toHex(),
  ),
  Category(
    id: 4,
    emojiUrl: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/sushi_1f363.png',
    emoji: ':sushi:',
    name: 'Sushi',
    color: Colors.pink.toHex(),
    accentColor: Colors.pink.shade50.toHex(),
  ),
  Category(
    id: 6,
    emojiUrl: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/kiwifruit_1f95d.png',
    emoji: ':fruit:',
    name: 'Fruit',
    color: Colors.green.toHex(),
    accentColor: Colors.green.shade50.toHex(),
  ),
  Category(
    id: 5,
    emojiUrl: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/cut-of-meat_1f969.png',
    emoji: ':meat:',
    name: 'Meat',
    color: Colors.red.toHex(),
    accentColor: Colors.red.shade50.toHex(),
  ),
  Category(
    id: 7,
    emojiUrl: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/spaghetti_1f35d.png',
    emoji: ':pasta:',
    name: 'Pasta',
    color: Colors.orange.toHex(),
    accentColor: Colors.orange.shade50.toHex(),
  ),
];
