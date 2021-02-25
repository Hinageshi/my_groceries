import 'package:my_groceries/data/entities/grocery.dart';
import 'package:my_groceries/data/sources/hive_boxes.dart';
import 'package:meta/meta.dart';

@immutable
class GroceriesRepository {
  const GroceriesRepository({
    @required HiveBoxes hiveBoxes,
  })  : assert(hiveBoxes != null),
        _hiveBoxes = hiveBoxes;

  factory GroceriesRepository.update(
    HiveBoxes hiveBoxes,
    GroceriesRepository old,
  ) {
    if (old == null || hiveBoxes != old._hiveBoxes) {
      return GroceriesRepository(
        hiveBoxes: hiveBoxes,
      );
    } else {
      return old;
    }
  }

  final HiveBoxes _hiveBoxes;

  Future<Grocery> getGrocery(String key) => _hiveBoxes.groceries.load(key);
  Future<void> setGrocery(String key, Grocery grocery) =>
      _hiveBoxes.groceries.save(key, grocery);
  Future<List<String>> getGroceries() => _hiveBoxes.groceries.keys();
  Future<Map<String, Grocery>> getMappedGroceries() =>
      _hiveBoxes.groceries.mappedValues();
}
