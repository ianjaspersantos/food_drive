// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CategoryState _$CategoryStateFromJson(Map<String, dynamic> json) {
  return _CategoryState.fromJson(json);
}

class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

// ignore: unused_element
  _CategoryState call(
      {@required List<Category> categories, @required Category category}) {
    return _CategoryState(
      categories: categories,
      category: category,
    );
  }
}

// ignore: unused_element
const $CategoryState = _$CategoryStateTearOff();

mixin _$CategoryState {
  List<Category> get categories;
  Category get category;

  Map<String, dynamic> toJson();
  $CategoryStateCopyWith<CategoryState> get copyWith;
}

abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
  $Res call({List<Category> categories, Category category});

  $CategoryCopyWith<$Res> get category;
}

class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;

  @override
  $Res call({
    Object categories = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
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

abstract class _$CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryStateCopyWith(
          _CategoryState value, $Res Function(_CategoryState) then) =
      __$CategoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Category> categories, Category category});

  @override
  $CategoryCopyWith<$Res> get category;
}

class __$CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateCopyWith<$Res> {
  __$CategoryStateCopyWithImpl(
      _CategoryState _value, $Res Function(_CategoryState) _then)
      : super(_value, (v) => _then(v as _CategoryState));

  @override
  _CategoryState get _value => super._value as _CategoryState;

  @override
  $Res call({
    Object categories = freezed,
    Object category = freezed,
  }) {
    return _then(_CategoryState(
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
      category: category == freezed ? _value.category : category as Category,
    ));
  }
}

@JsonSerializable()
class _$_CategoryState extends _CategoryState {
  const _$_CategoryState({@required this.categories, @required this.category})
      : assert(categories != null),
        assert(category != null),
        super._();

  factory _$_CategoryState.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryStateFromJson(json);

  @override
  final List<Category> categories;
  @override
  final Category category;

  @override
  String toString() {
    return 'CategoryState(categories: $categories, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryState &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(category);

  @override
  _$CategoryStateCopyWith<_CategoryState> get copyWith =>
      __$CategoryStateCopyWithImpl<_CategoryState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryStateToJson(this);
  }
}

abstract class _CategoryState extends CategoryState {
  const _CategoryState._() : super._();
  const factory _CategoryState(
      {@required List<Category> categories,
      @required Category category}) = _$_CategoryState;

  factory _CategoryState.fromJson(Map<String, dynamic> json) =
      _$_CategoryState.fromJson;

  @override
  List<Category> get categories;
  @override
  Category get category;
  @override
  _$CategoryStateCopyWith<_CategoryState> get copyWith;
}
