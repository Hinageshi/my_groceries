// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groceries_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GroceriesListToJson(GroceriesList instance) =>
    <String, dynamic>{};

_$_GroceriesList _$_$_GroceriesListFromJson(Map<String, dynamic> json) {
  return _$_GroceriesList(
    id: json['id'] as int,
    name: json['name'] as String,
    creationDate: json['creationDate'] == null
        ? null
        : DateTime.parse(json['creationDate'] as String),
    categories: (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : GroceryCategory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GroceriesListToJson(_$_GroceriesList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creationDate': instance.creationDate?.toIso8601String(),
      'categories': instance.categories,
    };
