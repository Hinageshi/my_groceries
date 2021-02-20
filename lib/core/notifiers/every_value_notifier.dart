import 'package:flutter/foundation.dart';

class EveryValueNotifier<T> extends ChangeNotifier
    implements ValueListenable<T> {
  T _value;

  EveryValueNotifier(this._value);

  @override
  T get value => _value;

  set value(T newValue) {
    _value = newValue;
    notifyListeners();
  }

  @override
  String toString() => '${describeIdentity(this)}($value)';
}
