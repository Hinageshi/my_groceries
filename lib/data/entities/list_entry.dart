import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'list_entry.freezed.dart';
part 'list_entry.g.dart';

@freezed
@JsonSerializable()
abstract class ListEntry with _$ListEntry {
  factory ListEntry({String name}) = _ListEntry;

  factory ListEntry.fromJson(Map<String, dynamic> json) =>
      _$ListEntryFromJson(json);
}
