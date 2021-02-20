import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:my_groceries/data/entities/list_entry.dart';

part 'grocery_category.freezed.dart';
part 'grocery_category.g.dart';

@freezed
@JsonSerializable()
abstract class GroceryCategory with _$GroceryCategory {
  factory GroceryCategory({int id, String name, List<ListEntry> entries}) =
      _GroceryCategory;

  factory GroceryCategory.fromJson(Map<String, dynamic> json) =>
      _$GroceryCategoryFromJson(json);
}
