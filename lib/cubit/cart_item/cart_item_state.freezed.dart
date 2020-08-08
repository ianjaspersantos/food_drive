// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CartItemState _$CartItemStateFromJson(Map<String, dynamic> json) {
  return _CartItemState.fromJson(json);
}

class _$CartItemStateTearOff {
  const _$CartItemStateTearOff();

// ignore: unused_element
  _CartItemState call(
      {@required List<CartItem> cartItems,
      @required @nullable LastAddedFood lastAddedFood}) {
    return _CartItemState(
      cartItems: cartItems,
      lastAddedFood: lastAddedFood,
    );
  }
}

// ignore: unused_element
const $CartItemState = _$CartItemStateTearOff();

mixin _$CartItemState {
  List<CartItem> get cartItems;
  @nullable
  LastAddedFood get lastAddedFood;

  Map<String, dynamic> toJson();
  $CartItemStateCopyWith<CartItemState> get copyWith;
}

abstract class $CartItemStateCopyWith<$Res> {
  factory $CartItemStateCopyWith(
          CartItemState value, $Res Function(CartItemState) then) =
      _$CartItemStateCopyWithImpl<$Res>;
  $Res call({List<CartItem> cartItems, @nullable LastAddedFood lastAddedFood});

  $LastAddedFoodCopyWith<$Res> get lastAddedFood;
}

class _$CartItemStateCopyWithImpl<$Res>
    implements $CartItemStateCopyWith<$Res> {
  _$CartItemStateCopyWithImpl(this._value, this._then);

  final CartItemState _value;
  // ignore: unused_field
  final $Res Function(CartItemState) _then;

  @override
  $Res call({
    Object cartItems = freezed,
    Object lastAddedFood = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems:
          cartItems == freezed ? _value.cartItems : cartItems as List<CartItem>,
      lastAddedFood: lastAddedFood == freezed
          ? _value.lastAddedFood
          : lastAddedFood as LastAddedFood,
    ));
  }

  @override
  $LastAddedFoodCopyWith<$Res> get lastAddedFood {
    if (_value.lastAddedFood == null) {
      return null;
    }
    return $LastAddedFoodCopyWith<$Res>(_value.lastAddedFood, (value) {
      return _then(_value.copyWith(lastAddedFood: value));
    });
  }
}

abstract class _$CartItemStateCopyWith<$Res>
    implements $CartItemStateCopyWith<$Res> {
  factory _$CartItemStateCopyWith(
          _CartItemState value, $Res Function(_CartItemState) then) =
      __$CartItemStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CartItem> cartItems, @nullable LastAddedFood lastAddedFood});

  @override
  $LastAddedFoodCopyWith<$Res> get lastAddedFood;
}

class __$CartItemStateCopyWithImpl<$Res>
    extends _$CartItemStateCopyWithImpl<$Res>
    implements _$CartItemStateCopyWith<$Res> {
  __$CartItemStateCopyWithImpl(
      _CartItemState _value, $Res Function(_CartItemState) _then)
      : super(_value, (v) => _then(v as _CartItemState));

  @override
  _CartItemState get _value => super._value as _CartItemState;

  @override
  $Res call({
    Object cartItems = freezed,
    Object lastAddedFood = freezed,
  }) {
    return _then(_CartItemState(
      cartItems:
          cartItems == freezed ? _value.cartItems : cartItems as List<CartItem>,
      lastAddedFood: lastAddedFood == freezed
          ? _value.lastAddedFood
          : lastAddedFood as LastAddedFood,
    ));
  }
}

@JsonSerializable()
class _$_CartItemState extends _CartItemState {
  _$_CartItemState(
      {@required this.cartItems, @required @nullable this.lastAddedFood})
      : assert(cartItems != null),
        super._();

  factory _$_CartItemState.fromJson(Map<String, dynamic> json) =>
      _$_$_CartItemStateFromJson(json);

  @override
  final List<CartItem> cartItems;
  @override
  @nullable
  final LastAddedFood lastAddedFood;

  bool _diddelivery = false;
  num _delivery;

  @override
  num get delivery {
    if (_diddelivery == false) {
      _diddelivery = true;
      _delivery = cartItems.isEmpty ? 0 : 5;
    }
    return _delivery;
  }

  bool _didsubtotal = false;
  num _subtotal;

  @override
  num get subtotal {
    if (_didsubtotal == false) {
      _didsubtotal = true;
      _subtotal = cartItems.fold(
          0,
          (previousValue, element) =>
              previousValue + (element.quantity * element.food.price));
    }
    return _subtotal;
  }

  bool _didtotal = false;
  num _total;

  @override
  num get total {
    if (_didtotal == false) {
      _didtotal = true;
      _total = subtotal + delivery;
    }
    return _total;
  }

  @override
  String toString() {
    return 'CartItemState(cartItems: $cartItems, lastAddedFood: $lastAddedFood, delivery: $delivery, subtotal: $subtotal, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItemState &&
            (identical(other.cartItems, cartItems) ||
                const DeepCollectionEquality()
                    .equals(other.cartItems, cartItems)) &&
            (identical(other.lastAddedFood, lastAddedFood) ||
                const DeepCollectionEquality()
                    .equals(other.lastAddedFood, lastAddedFood)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cartItems) ^
      const DeepCollectionEquality().hash(lastAddedFood);

  @override
  _$CartItemStateCopyWith<_CartItemState> get copyWith =>
      __$CartItemStateCopyWithImpl<_CartItemState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartItemStateToJson(this);
  }
}

abstract class _CartItemState extends CartItemState {
  _CartItemState._() : super._();
  factory _CartItemState(
      {@required List<CartItem> cartItems,
      @required @nullable LastAddedFood lastAddedFood}) = _$_CartItemState;

  factory _CartItemState.fromJson(Map<String, dynamic> json) =
      _$_CartItemState.fromJson;

  @override
  List<CartItem> get cartItems;
  @override
  @nullable
  LastAddedFood get lastAddedFood;
  @override
  _$CartItemStateCopyWith<_CartItemState> get copyWith;
}

LastAddedFood _$LastAddedFoodFromJson(Map<String, dynamic> json) {
  return _LastAddedFood.fromJson(json);
}

class _$LastAddedFoodTearOff {
  const _$LastAddedFoodTearOff();

// ignore: unused_element
  _LastAddedFood call({@required Food food, @required DateTime dateTime}) {
    return _LastAddedFood(
      food: food,
      dateTime: dateTime,
    );
  }
}

// ignore: unused_element
const $LastAddedFood = _$LastAddedFoodTearOff();

mixin _$LastAddedFood {
  Food get food;
  DateTime get dateTime;

  Map<String, dynamic> toJson();
  $LastAddedFoodCopyWith<LastAddedFood> get copyWith;
}

abstract class $LastAddedFoodCopyWith<$Res> {
  factory $LastAddedFoodCopyWith(
          LastAddedFood value, $Res Function(LastAddedFood) then) =
      _$LastAddedFoodCopyWithImpl<$Res>;
  $Res call({Food food, DateTime dateTime});

  $FoodCopyWith<$Res> get food;
}

class _$LastAddedFoodCopyWithImpl<$Res>
    implements $LastAddedFoodCopyWith<$Res> {
  _$LastAddedFoodCopyWithImpl(this._value, this._then);

  final LastAddedFood _value;
  // ignore: unused_field
  final $Res Function(LastAddedFood) _then;

  @override
  $Res call({
    Object food = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      food: food == freezed ? _value.food : food as Food,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
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

abstract class _$LastAddedFoodCopyWith<$Res>
    implements $LastAddedFoodCopyWith<$Res> {
  factory _$LastAddedFoodCopyWith(
          _LastAddedFood value, $Res Function(_LastAddedFood) then) =
      __$LastAddedFoodCopyWithImpl<$Res>;
  @override
  $Res call({Food food, DateTime dateTime});

  @override
  $FoodCopyWith<$Res> get food;
}

class __$LastAddedFoodCopyWithImpl<$Res>
    extends _$LastAddedFoodCopyWithImpl<$Res>
    implements _$LastAddedFoodCopyWith<$Res> {
  __$LastAddedFoodCopyWithImpl(
      _LastAddedFood _value, $Res Function(_LastAddedFood) _then)
      : super(_value, (v) => _then(v as _LastAddedFood));

  @override
  _LastAddedFood get _value => super._value as _LastAddedFood;

  @override
  $Res call({
    Object food = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_LastAddedFood(
      food: food == freezed ? _value.food : food as Food,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

@JsonSerializable()
class _$_LastAddedFood extends _LastAddedFood {
  _$_LastAddedFood({@required this.food, @required this.dateTime})
      : assert(food != null),
        assert(dateTime != null),
        super._();

  factory _$_LastAddedFood.fromJson(Map<String, dynamic> json) =>
      _$_$_LastAddedFoodFromJson(json);

  @override
  final Food food;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'LastAddedFood(food: $food, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastAddedFood &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(food) ^
      const DeepCollectionEquality().hash(dateTime);

  @override
  _$LastAddedFoodCopyWith<_LastAddedFood> get copyWith =>
      __$LastAddedFoodCopyWithImpl<_LastAddedFood>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LastAddedFoodToJson(this);
  }
}

abstract class _LastAddedFood extends LastAddedFood {
  _LastAddedFood._() : super._();
  factory _LastAddedFood({@required Food food, @required DateTime dateTime}) =
      _$_LastAddedFood;

  factory _LastAddedFood.fromJson(Map<String, dynamic> json) =
      _$_LastAddedFood.fromJson;

  @override
  Food get food;
  @override
  DateTime get dateTime;
  @override
  _$LastAddedFoodCopyWith<_LastAddedFood> get copyWith;
}
