import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:my_groceries/data/entities/grocery_category.dart';

part 'groceries_list.freezed.dart';
part 'groceries_list.g.dart';

@freezed
@JsonSerializable()
abstract class GroceriesList with _$GroceriesList {
  factory GroceriesList(
      {int id,
      String name,
      DateTime creationDate,
      List<GroceryCategory> categories}) = _GroceriesList;

  factory GroceriesList.fromJson(Map<String, dynamic> json) =>
      _$GroceriesListFromJson(json);
}
