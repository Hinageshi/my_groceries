// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'grocery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Grocery _$GroceryFromJson(Map<String, dynamic> json) {
  return _Grocery.fromJson(json);
}

/// @nodoc
class _$GroceryTearOff {
  const _$GroceryTearOff();

// ignore: unused_element
  _Grocery call({String name, double amount, bool isBuyed, String category}) {
    return _Grocery(
      name: name,
      amount: amount,
      isBuyed: isBuyed,
      category: category,
    );
  }

// ignore: unused_element
  Grocery fromJson(Map<String, Object> json) {
    return Grocery.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Grocery = _$GroceryTearOff();

/// @nodoc
mixin _$Grocery {
  String get name;
  double get amount;
  bool get isBuyed;
  String get category;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GroceryCopyWith<Grocery> get copyWith;
}

/// @nodoc
abstract class $GroceryCopyWith<$Res> {
  factory $GroceryCopyWith(Grocery value, $Res Function(Grocery) then) =
      _$GroceryCopyWithImpl<$Res>;
  $Res call({String name, double amount, bool isBuyed, String category});
}

/// @nodoc
class _$GroceryCopyWithImpl<$Res> implements $GroceryCopyWith<$Res> {
  _$GroceryCopyWithImpl(this._value, this._then);

  final Grocery _value;
  // ignore: unused_field
  final $Res Function(Grocery) _then;

  @override
  $Res call({
    Object name = freezed,
    Object amount = freezed,
    Object isBuyed = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      amount: amount == freezed ? _value.amount : amount as double,
      isBuyed: isBuyed == freezed ? _value.isBuyed : isBuyed as bool,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
abstract class _$GroceryCopyWith<$Res> implements $GroceryCopyWith<$Res> {
  factory _$GroceryCopyWith(_Grocery value, $Res Function(_Grocery) then) =
      __$GroceryCopyWithImpl<$Res>;
  @override
  $Res call({String name, double amount, bool isBuyed, String category});
}

/// @nodoc
class __$GroceryCopyWithImpl<$Res> extends _$GroceryCopyWithImpl<$Res>
    implements _$GroceryCopyWith<$Res> {
  __$GroceryCopyWithImpl(_Grocery _value, $Res Function(_Grocery) _then)
      : super(_value, (v) => _then(v as _Grocery));

  @override
  _Grocery get _value => super._value as _Grocery;

  @override
  $Res call({
    Object name = freezed,
    Object amount = freezed,
    Object isBuyed = freezed,
    Object category = freezed,
  }) {
    return _then(_Grocery(
      name: name == freezed ? _value.name : name as String,
      amount: amount == freezed ? _value.amount : amount as double,
      isBuyed: isBuyed == freezed ? _value.isBuyed : isBuyed as bool,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Grocery with DiagnosticableTreeMixin implements _Grocery {
  const _$_Grocery({this.name, this.amount, this.isBuyed, this.category});

  factory _$_Grocery.fromJson(Map<String, dynamic> json) =>
      _$_$_GroceryFromJson(json);

  @override
  final String name;
  @override
  final double amount;
  @override
  final bool isBuyed;
  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Grocery(name: $name, amount: $amount, isBuyed: $isBuyed, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Grocery'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('isBuyed', isBuyed))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Grocery &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.isBuyed, isBuyed) ||
                const DeepCollectionEquality()
                    .equals(other.isBuyed, isBuyed)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(isBuyed) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$GroceryCopyWith<_Grocery> get copyWith =>
      __$GroceryCopyWithImpl<_Grocery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroceryToJson(this);
  }
}

abstract class _Grocery implements Grocery {
  const factory _Grocery(
      {String name, double amount, bool isBuyed, String category}) = _$_Grocery;

  factory _Grocery.fromJson(Map<String, dynamic> json) = _$_Grocery.fromJson;

  @override
  String get name;
  @override
  double get amount;
  @override
  bool get isBuyed;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$GroceryCopyWith<_Grocery> get copyWith;
}
