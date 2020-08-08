// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

class _$CartItemTearOff {
  const _$CartItemTearOff();

// ignore: unused_element
  _CartItem call({@required int quantity, @required Food food}) {
    return _CartItem(
      quantity: quantity,
      food: food,
    );
  }
}

// ignore: unused_element
const $CartItem = _$CartItemTearOff();

mixin _$CartItem {
  int get quantity;
  Food get food;

  Map<String, dynamic> toJson();
  $CartItemCopyWith<CartItem> get copyWith;
}

abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call({int quantity, Food food});

  $FoodCopyWith<$Res> get food;
}

class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

  @override
  $Res call({
    Object quantity = freezed,
    Object food = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      food: food == freezed ? _value.food : food as Food,
    ));
  }

  @override
  $FoodCopyWith<$Res> get food {
    if (_value.food == null) {
      return null;
    }
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

abstract class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) then) =
      __$CartItemCopyWithImpl<$Res>;
  @override
  $Res call({int quantity, Food food});

  @override
  $FoodCopyWith<$Res> get food;
}

class __$CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(_CartItem _value, $Res Function(_CartItem) _then)
      : super(_value, (v) => _then(v as _CartItem));

  @override
  _CartItem get _value => super._value as _CartItem;

  @override
  $Res call({
    Object quantity = freezed,
    Object food = freezed,
  }) {
    return _then(_CartItem(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      food: food == freezed ? _value.food : food as Food,
    ));
  }
}

@JsonSerializable()
class _$_CartItem extends _CartItem {
  const _$_CartItem({@required this.quantity, @required this.food})
      : assert(quantity != null),
        assert(food != null),
        super._();

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$_$_CartItemFromJson(json);

  @override
  final int quantity;
  @override
  final Food food;

  @override
  String toString() {
    return 'CartItem(quantity: $quantity, food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItem &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(food);

  @override
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartItemToJson(this);
  }
}

abstract class _CartItem extends CartItem {
  const _CartItem._() : super._();
  const factory _CartItem({@required int quantity, @required Food food}) =
      _$_CartItem;

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

  @override
  int get quantity;
  @override
  Food get food;
  @override
  _$CartItemCopyWith<_CartItem> get copyWith;
}
