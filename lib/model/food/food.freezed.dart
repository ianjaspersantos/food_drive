// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

class _$FoodTearOff {
  const _$FoodTearOff();

// ignore: unused_element
  _Food call(
      {@required int id,
      @required String imageUrl,
      @required String name,
      @required num price,
      @required num rating,
      @required Category category}) {
    return _Food(
      id: id,
      imageUrl: imageUrl,
      name: name,
      price: price,
      rating: rating,
      category: category,
    );
  }
}

// ignore: unused_element
const $Food = _$FoodTearOff();

mixin _$Food {
  int get id;
  String get imageUrl;
  String get name;
  num get price;
  num get rating;
  Category get category;

  Map<String, dynamic> toJson();
  $FoodCopyWith<Food> get copyWith;
}

abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String imageUrl,
      String name,
      num price,
      num rating,
      Category category});

  $CategoryCopyWith<$Res> get category;
}

class _$FoodCopyWithImpl<$Res> implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  final Food _value;
  // ignore: unused_field
  final $Res Function(Food) _then;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object name = freezed,
    Object price = freezed,
    Object rating = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as num,
      rating: rating == freezed ? _value.rating : rating as num,
      category: category == freezed ? _value.category : category as Category,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

abstract class _$FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$FoodCopyWith(_Food value, $Res Function(_Food) then) =
      __$FoodCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String imageUrl,
      String name,
      num price,
      num rating,
      Category category});

  @override
  $CategoryCopyWith<$Res> get category;
}

class __$FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res>
    implements _$FoodCopyWith<$Res> {
  __$FoodCopyWithImpl(_Food _value, $Res Function(_Food) _then)
      : super(_value, (v) => _then(v as _Food));

  @override
  _Food get _value => super._value as _Food;

  @override
  $Res call({
    Object id = freezed,
    Object imageUrl = freezed,
    Object name = freezed,
    Object price = freezed,
    Object rating = freezed,
    Object category = freezed,
  }) {
    return _then(_Food(
      id: id == freezed ? _value.id : id as int,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as num,
      rating: rating == freezed ? _value.rating : rating as num,
      category: category == freezed ? _value.category : category as Category,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_Food extends _Food {
  const _$_Food(
      {@required this.id,
      @required this.imageUrl,
      @required this.name,
      @required this.price,
      @required this.rating,
      @required this.category})
      : assert(id != null),
        assert(imageUrl != null),
        assert(name != null),
        assert(price != null),
        assert(rating != null),
        assert(category != null),
        super._();

  factory _$_Food.fromJson(Map<String, dynamic> json) =>
      _$_$_FoodFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final num price;
  @override
  final num rating;
  @override
  final Category category;

  @override
  String toString() {
    return 'Food(id: $id, imageUrl: $imageUrl, name: $name, price: $price, rating: $rating, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Food &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(category);

  @override
  _$FoodCopyWith<_Food> get copyWith =>
      __$FoodCopyWithImpl<_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FoodToJson(this);
  }
}

abstract class _Food extends Food {
  const _Food._() : super._();
  const factory _Food(
      {@required int id,
      @required String imageUrl,
      @required String name,
      @required num price,
      @required num rating,
      @required Category category}) = _$_Food;

  factory _Food.fromJson(Map<String, dynamic> json) = _$_Food.fromJson;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get name;
  @override
  num get price;
  @override
  num get rating;
  @override
  Category get category;
  @override
  _$FoodCopyWith<_Food> get copyWith;
}
