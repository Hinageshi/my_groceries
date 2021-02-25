import 'package:hive/hive.dart';
import 'package:my_groceries/data/entities/grocery.dart';
import 'package:path_provider/path_provider.dart';

class HiveBoxes {
  HiveBoxes() : groceries = _HiveBox('groceries');

  final DataBox<Grocery> groceries;
}

/// Represents a singular box.
abstract class DataBox<T> {
  const DataBox();

  Future<T> load(String key);
  Future<void> save(String key, T value);
  Future<List<String>> keys();
  Future<Map<String, T>> mappedValues();
}

class _HiveBox<T> extends DataBox<T> {
  _HiveBox(this.boxKey) : assert(boxKey != null);

  final String boxKey;
  List<String> valueKeys;

  Future<void> _initializeBox<T>() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    if (!Hive.isBoxOpen(boxKey)) await Hive.openBox<T>(boxKey);
    valueKeys = Hive.box<T>(boxKey).keys.map((e) => e.toString()).toList();
  }

  @override
  Future<T> load(String key) async {
    if (!Hive.isBoxOpen(boxKey)) await _initializeBox<T>();
    if (!valueKeys.contains(key)) return null;
    return Hive.box<T>(boxKey).get(key);
  }

  @override
  Future<void> save(String key, T value) async {
    if (!Hive.isBoxOpen(boxKey)) await _initializeBox<T>();
    final box = Hive.box<T>(boxKey);
    if (!valueKeys.contains(key)) valueKeys.add(key);
    box.put(key, value);
  }

  @override
  Future<List<String>> keys() async {
    if (!Hive.isBoxOpen(boxKey)) await _initializeBox<T>();
    return valueKeys;
  }

  @override
  Future<Map<String, T>> mappedValues() async {
    if (!Hive.isBoxOpen(boxKey)) await _initializeBox<T>();
    return Hive.box<T>(boxKey)
        .toMap()
        .map((key, value) => MapEntry<String, T>(key.toString(), value));
  }
}
