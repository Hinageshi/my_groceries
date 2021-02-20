// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GroceryCategoryToJson(GroceryCategory instance) =>
    <String, dynamic>{};

_$_GroceryCategory _$_$_GroceryCategoryFromJson(Map<String, dynamic> json) {
  return _$_GroceryCategory(
    id: json['id'] as int,
    name: json['name'] as String,
    entries: (json['entries'] as List)
        ?.map((e) =>
            e == null ? null : ListEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GroceryCategoryToJson(_$_GroceryCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'entries': instance.entries,
    };
