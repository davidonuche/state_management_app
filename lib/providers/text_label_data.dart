import 'package:flutter/material.dart';

class TextLabelData extends ChangeNotifier {
  String _textLabel = "";
  String get textLabel => _textLabel;
  void changeTextLabel(String value) {
    _textLabel = value;
    notifyListeners();
  }
}
