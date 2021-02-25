import 'package:my_groceries/core/exceptions/app_exception.dart';
import 'package:my_groceries/core/notifiers/busy.dart';
import 'package:my_groceries/core/notifiers/error.dart';
import 'package:my_groceries/core/notifiers/loadable.dart';
import 'package:my_groceries/core/notifiers/safe_change_notifier.dart';
import 'package:my_groceries/core/notifiers/utils/utils.dart';
import 'package:my_groceries/data/entities/grocery.dart';
import 'package:my_groceries/data/repositories/groceries.dart';

class GroceriesNotifier extends SafeChangeNotifier
    with BusyNotifier, ErrorNotifier
    implements LoadableNotifier {
  GroceriesRepository groceriesRepository;

  Map<String, Grocery> _groceries;
  Map<String, Grocery> get groceries => _groceries;
  set groceries(Map<String, Grocery> value) {
    if (_groceries != value) {
      _groceries = value;
      notifyListeners();
    }
  }

  @override
  Future<void> load() async {
    busy = true;
    try {
      await callOrThrow(
        () async {},
      );
    } on AppException {
      errorMessage = ErrorMessage(
        title: "Error",
        message: "An error occured while getting your groceries.",
        actionLabel: "Retry",
        onAction: (context) => load(),
        okLabel: "Ok",
      );
    } finally {
      busy = false;
    }
  }
}
