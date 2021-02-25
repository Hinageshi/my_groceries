// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Grocery _$_$_GroceryFromJson(Map<String, dynamic> json) {
  return _$_Grocery(
    name: json['name'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    isBuyed: json['isBuyed'] as bool,
    category: json['category'] as String,
  );
}

Map<String, dynamic> _$_$_GroceryToJson(_$_Grocery instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'isBuyed': instance.isBuyed,
      'category': instance.category,
    };
