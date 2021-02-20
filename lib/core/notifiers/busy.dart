import 'package:flutter/foundation.dart';

mixin BusyNotifier on ChangeNotifier {
  bool _busy = false;

  bool get busy => _busy;

  @protected
  set busy(bool value) {
    assert(value != null);
    if(_busy != value) {
      _busy = value;
      notifyListeners();
    }
  }
}