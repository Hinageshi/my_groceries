// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'groceries_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GroceriesList _$GroceriesListFromJson(Map<String, dynamic> json) {
  return _GroceriesList.fromJson(json);
}

/// @nodoc
class _$GroceriesListTearOff {
  const _$GroceriesListTearOff();

// ignore: unused_element
  _GroceriesList call(
      {int id,
      String name,
      DateTime creationDate,
      List<GroceryCategory> categories}) {
    return _GroceriesList(
      id: id,
      name: name,
      creationDate: creationDate,
      categories: categories,
    );
  }

// ignore: unused_element
  GroceriesList fromJson(Map<String, Object> json) {
    return GroceriesList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GroceriesList = _$GroceriesListTearOff();

/// @nodoc
mixin _$GroceriesList {
  int get id;
  String get name;
  DateTime get creationDate;
  List<GroceryCategory> get categories;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GroceriesListCopyWith<GroceriesList> get copyWith;
}

/// @nodoc
abstract class $GroceriesListCopyWith<$Res> {
  factory $GroceriesListCopyWith(
          GroceriesList value, $Res Function(GroceriesList) then) =
      _$GroceriesListCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      DateTime creationDate,
      List<GroceryCategory> categories});
}

/// @nodoc
class _$GroceriesListCopyWithImpl<$Res>
    implements $GroceriesListCopyWith<$Res> {
  _$GroceriesListCopyWithImpl(this._value, this._then);

  final GroceriesList _value;
  // ignore: unused_field
  final $Res Function(GroceriesList) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object creationDate = freezed,
    Object categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as DateTime,
      categories: categories == freezed
          ? _value.categories
          : categories as List<GroceryCategory>,
    ));
  }
}

/// @nodoc
abstract class _$GroceriesListCopyWith<$Res>
    implements $GroceriesListCopyWith<$Res> {
  factory _$GroceriesListCopyWith(
          _GroceriesList value, $Res Function(_GroceriesList) then) =
      __$GroceriesListCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      DateTime creationDate,
      List<GroceryCategory> categories});
}

/// @nodoc
class __$GroceriesListCopyWithImpl<$Res>
    extends _$GroceriesListCopyWithImpl<$Res>
    implements _$GroceriesListCopyWith<$Res> {
  __$GroceriesListCopyWithImpl(
      _GroceriesList _value, $Res Function(_GroceriesList) _then)
      : super(_value, (v) => _then(v as _GroceriesList));

  @override
  _GroceriesList get _value => super._value as _GroceriesList;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object creationDate = freezed,
    Object categories = freezed,
  }) {
    return _then(_GroceriesList(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as DateTime,
      categories: categories == freezed
          ? _value.categories
          : categories as List<GroceryCategory>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GroceriesList with DiagnosticableTreeMixin implements _GroceriesList {
  _$_GroceriesList({this.id, this.name, this.creationDate, this.categories});

  factory _$_GroceriesList.fromJson(Map<String, dynamic> json) =>
      _$_$_GroceriesListFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime creationDate;
  @override
  final List<GroceryCategory> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroceriesList(id: $id, name: $name, creationDate: $creationDate, categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroceriesList'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('creationDate', creationDate))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroceriesList &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$GroceriesListCopyWith<_GroceriesList> get copyWith =>
      __$GroceriesListCopyWithImpl<_GroceriesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroceriesListToJson(this);
  }
}

abstract class _GroceriesList implements GroceriesList {
  factory _GroceriesList(
      {int id,
      String name,
      DateTime creationDate,
      List<GroceryCategory> categories}) = _$_GroceriesList;

  factory _GroceriesList.fromJson(Map<String, dynamic> json) =
      _$_GroceriesList.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get creationDate;
  @override
  List<GroceryCategory> get categories;
  @override
  @JsonKey(ignore: true)
  _$GroceriesListCopyWith<_GroceriesList> get copyWith;
}
