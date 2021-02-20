// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'grocery_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GroceryCategory _$GroceryCategoryFromJson(Map<String, dynamic> json) {
  return _GroceryCategory.fromJson(json);
}

/// @nodoc
class _$GroceryCategoryTearOff {
  const _$GroceryCategoryTearOff();

// ignore: unused_element
  _GroceryCategory call({int id, String name, List<ListEntry> entries}) {
    return _GroceryCategory(
      id: id,
      name: name,
      entries: entries,
    );
  }

// ignore: unused_element
  GroceryCategory fromJson(Map<String, Object> json) {
    return GroceryCategory.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GroceryCategory = _$GroceryCategoryTearOff();

/// @nodoc
mixin _$GroceryCategory {
  int get id;
  String get name;
  List<ListEntry> get entries;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GroceryCategoryCopyWith<GroceryCategory> get copyWith;
}

/// @nodoc
abstract class $GroceryCategoryCopyWith<$Res> {
  factory $GroceryCategoryCopyWith(
          GroceryCategory value, $Res Function(GroceryCategory) then) =
      _$GroceryCategoryCopyWithImpl<$Res>;
  $Res call({int id, String name, List<ListEntry> entries});
}

/// @nodoc
class _$GroceryCategoryCopyWithImpl<$Res>
    implements $GroceryCategoryCopyWith<$Res> {
  _$GroceryCategoryCopyWithImpl(this._value, this._then);

  final GroceryCategory _value;
  // ignore: unused_field
  final $Res Function(GroceryCategory) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object entries = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      entries: entries == freezed ? _value.entries : entries as List<ListEntry>,
    ));
  }
}

/// @nodoc
abstract class _$GroceryCategoryCopyWith<$Res>
    implements $GroceryCategoryCopyWith<$Res> {
  factory _$GroceryCategoryCopyWith(
          _GroceryCategory value, $Res Function(_GroceryCategory) then) =
      __$GroceryCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, List<ListEntry> entries});
}

/// @nodoc
class __$GroceryCategoryCopyWithImpl<$Res>
    extends _$GroceryCategoryCopyWithImpl<$Res>
    implements _$GroceryCategoryCopyWith<$Res> {
  __$GroceryCategoryCopyWithImpl(
      _GroceryCategory _value, $Res Function(_GroceryCategory) _then)
      : super(_value, (v) => _then(v as _GroceryCategory));

  @override
  _GroceryCategory get _value => super._value as _GroceryCategory;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object entries = freezed,
  }) {
    return _then(_GroceryCategory(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      entries: entries == freezed ? _value.entries : entries as List<ListEntry>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GroceryCategory
    with DiagnosticableTreeMixin
    implements _GroceryCategory {
  _$_GroceryCategory({this.id, this.name, this.entries});

  factory _$_GroceryCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_GroceryCategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final List<ListEntry> entries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroceryCategory(id: $id, name: $name, entries: $entries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroceryCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('entries', entries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroceryCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality().equals(other.entries, entries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(entries);

  @JsonKey(ignore: true)
  @override
  _$GroceryCategoryCopyWith<_GroceryCategory> get copyWith =>
      __$GroceryCategoryCopyWithImpl<_GroceryCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroceryCategoryToJson(this);
  }
}

abstract class _GroceryCategory implements GroceryCategory {
  factory _GroceryCategory({int id, String name, List<ListEntry> entries}) =
      _$_GroceryCategory;

  factory _GroceryCategory.fromJson(Map<String, dynamic> json) =
      _$_GroceryCategory.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<ListEntry> get entries;
  @override
  @JsonKey(ignore: true)
  _$GroceryCategoryCopyWith<_GroceryCategory> get copyWith;
}
