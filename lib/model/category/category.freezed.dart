// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

class _$CategoryTearOff {
  const _$CategoryTearOff();

// ignore: unused_element
  _Category call(
      {@required int id,
      @required String emojiUrl,
      @required String emoji,
      @required String name,
      @required String color,
      @required String accentColor}) {
    return _Category(
      id: id,
      emojiUrl: emojiUrl,
      emoji: emoji,
      name: name,
      color: color,
      accentColor: accentColor,
    );
  }
}

// ignore: unused_element
const $Category = _$CategoryTearOff();

mixin _$Category {
  int get id;
  String get emojiUrl;
  String get emoji;
  String get name;
  String get color;
  String get accentColor;

  Map<String, dynamic> toJson();
  $CategoryCopyWith<Category> get copyWith;
}

abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String emojiUrl,
      String emoji,
      String name,
      String color,
      String accentColor});
}

class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object id = freezed,
    Object emojiUrl = freezed,
    Object emoji = freezed,
    Object name = freezed,
    Object color = freezed,
    Object accentColor = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      emojiUrl: emojiUrl == freezed ? _value.emojiUrl : emojiUrl as String,
      emoji: emoji == freezed ? _value.emoji : emoji as String,
      name: name == freezed ? _value.name : name as String,
      color: color == freezed ? _value.color : color as String,
      accentColor:
          accentColor == freezed ? _value.accentColor : accentColor as String,
    ));
  }
}

abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String emojiUrl,
      String emoji,
      String name,
      String color,
      String accentColor});
}

class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object id = freezed,
    Object emojiUrl = freezed,
    Object emoji = freezed,
    Object name = freezed,
    Object color = freezed,
    Object accentColor = freezed,
  }) {
    return _then(_Category(
      id: id == freezed ? _value.id : id as int,
      emojiUrl: emojiUrl == freezed ? _value.emojiUrl : emojiUrl as String,
      emoji: emoji == freezed ? _value.emoji : emoji as String,
      name: name == freezed ? _value.name : name as String,
      color: color == freezed ? _value.color : color as String,
      accentColor:
          accentColor == freezed ? _value.accentColor : accentColor as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_Category extends _Category {
  const _$_Category(
      {@required this.id,
      @required this.emojiUrl,
      @required this.emoji,
      @required this.name,
      @required this.color,
      @required this.accentColor})
      : assert(id != null),
        assert(emojiUrl != null),
        assert(emoji != null),
        assert(name != null),
        assert(color != null),
        assert(accentColor != null),
        super._();

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryFromJson(json);

  @override
  final int id;
  @override
  final String emojiUrl;
  @override
  final String emoji;
  @override
  final String name;
  @override
  final String color;
  @override
  final String accentColor;

  @override
  String toString() {
    return 'Category(id: $id, emojiUrl: $emojiUrl, emoji: $emoji, name: $name, color: $color, accentColor: $accentColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.emojiUrl, emojiUrl) ||
                const DeepCollectionEquality()
                    .equals(other.emojiUrl, emojiUrl)) &&
            (identical(other.emoji, emoji) ||
                const DeepCollectionEquality().equals(other.emoji, emoji)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.accentColor, accentColor) ||
                const DeepCollectionEquality()
                    .equals(other.accentColor, accentColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(emojiUrl) ^
      const DeepCollectionEquality().hash(emoji) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(accentColor);

  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryToJson(this);
  }
}

abstract class _Category extends Category {
  const _Category._() : super._();
  const factory _Category(
      {@required int id,
      @required String emojiUrl,
      @required String emoji,
      @required String name,
      @required String color,
      @required String accentColor}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  int get id;
  @override
  String get emojiUrl;
  @override
  String get emoji;
  @override
  String get name;
  @override
  String get color;
  @override
  String get accentColor;
  @override
  _$CategoryCopyWith<_Category> get copyWith;
}
