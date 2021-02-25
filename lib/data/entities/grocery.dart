import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery.freezed.dart';
part 'grocery.g.dart';

@freezed
abstract class Grocery with _$Grocery {
  const factory Grocery({
    String name,
    double amount,
    bool isBuyed,
    String category,
  }) = _Grocery;

  factory Grocery.fromJson(Map<String, dynamic> json) =>
      _$GroceryFromJson(json);
}
