import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MultiSkillProvider with ChangeNotifier {
  List<int> _selectedSkills = [];

  List get selectedSkills => _selectedSkills;

  void addSkill(int value) {
    _selectedSkills.add(value);
    notifyListeners();
  }

  void removeSkill(int value) {
    _selectedSkills.remove(value);
    notifyListeners();
  }
}
