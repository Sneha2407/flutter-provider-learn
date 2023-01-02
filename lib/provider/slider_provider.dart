import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier {
  double _value = 0.1;
  double get slider => _value;

  void setSlider(double value) {
    _value = value;
    notifyListeners();
  }
}
