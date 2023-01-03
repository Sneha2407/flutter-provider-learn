import 'package:flutter/foundation.dart';

class SelectProvider with ChangeNotifier {
  int _selectedItem = -1;
  List<String> skills = [
    "Self Awareness",
    "Assertiveness",
    "Self Belief",
    "Independence",
    "Passion",
    "Organised",
    "Network",
    "Realistic",
    "Flexible",
    "Organised",
    "Problem solving",
    "Motivation",
    "Persistence",
    "Opimism",
    "Self Care",
    "Discipline",
    "Pro Active",
    "Risk Taking",
    "Resillence"
  ];

  int get selectedItem => _selectedItem;

  void setSelectedItem(int value) {
    _selectedItem = value;
    notifyListeners();
  }

  String get mySkill => skills[selectedItem];
}
