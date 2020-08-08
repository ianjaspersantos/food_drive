// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'food_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FoodState _$FoodStateFromJson(Map<String, dynamic> json) {
  return _FoodState.fromJson(json);
}

class _$FoodStateTearOff {
  const _$FoodStateTearOff();

// ignore: unused_element
  _FoodState call({@required List<Food> foods}) {
    return _FoodState(
      foods: foods,
    );
  }
}

// ignore: unused_element
const $FoodState = _$FoodStateTearOff();

mixin _$FoodState {
  List<Food> get foods;

  Map<String, dynamic> toJson();
  $FoodStateCopyWith<FoodState> get copyWith;
}

abstract class $FoodStateCopyWith<$Res> {
  factory $FoodStateCopyWith(FoodState value, $Res Function(FoodState) then) =
      _$FoodStateCopyWithImpl<$Res>;
  $Res call({List<Food> foods});
}

class _$FoodStateCopyWithImpl<$Res> implements $FoodStateCopyWith<$Res> {
  _$FoodStateCopyWithImpl(this._value, this._then);

  final FoodState _value;
  // ignore: unused_field
  final $Res Function(FoodState) _then;

  @override
  $Res call({
    Object foods = freezed,
  }) {
    return _then(_value.copyWith(
      foods: foods == freezed ? _value.foods : foods as List<Food>,
    ));
  }
}

abstract class _$FoodStateCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory _$FoodStateCopyWith(
          _FoodState value, $Res Function(_FoodState) then) =
      __$FoodStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Food> foods});
}

class __$FoodStateCopyWithImpl<$Res> extends _$FoodStateCopyWithImpl<$Res>
    implements _$FoodStateCopyWith<$Res> {
  __$FoodStateCopyWithImpl(_FoodState _value, $Res Function(_FoodState) _then)
      : super(_value, (v) => _then(v as _FoodState));

  @override
  _FoodState get _value => super._value as _FoodState;

  @override
  $Res call({
    Object foods = freezed,
  }) {
    return _then(_FoodState(
      foods: foods == freezed ? _value.foods : foods as List<Food>,
    ));
  }
}

@JsonSerializable()
class _$_FoodState extends _FoodState {
  const _$_FoodState({@required this.foods})
      : assert(foods != null),
        super._();

  factory _$_FoodState.fromJson(Map<String, dynamic> json) =>
      _$_$_FoodStateFromJson(json);

  @override
  final List<Food> foods;

  @override
  String toString() {
    return 'FoodState(foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FoodState &&
            (identical(other.foods, foods) ||
                const DeepCollectionEquality().equals(other.foods, foods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(foods);

  @override
  _$FoodStateCopyWith<_FoodState> get copyWith =>
      __$FoodStateCopyWithImpl<_FoodState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FoodStateToJson(this);
  }
}

abstract class _FoodState extends FoodState {
  const _FoodState._() : super._();
  const factory _FoodState({@required List<Food> foods}) = _$_FoodState;

  factory _FoodState.fromJson(Map<String, dynamic> json) =
      _$_FoodState.fromJson;

  @override
  List<Food> get foods;
  @override
  _$FoodStateCopyWith<_FoodState> get copyWith;
}
