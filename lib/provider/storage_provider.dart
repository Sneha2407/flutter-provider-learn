import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StorageProvider with ChangeNotifier {
  final nameController = TextEditingController();
  String get name => nameController.text;

  final emailController = TextEditingController();
  String get email => emailController.text;
}
