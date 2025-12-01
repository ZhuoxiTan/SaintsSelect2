import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _AthleteOptions = ['Athlete', 'Non-Athlete'];
  List<String> get AthleteOptions => _AthleteOptions;
  set AthleteOptions(List<String> value) {
    _AthleteOptions = value;
  }

  void addToAthleteOptions(String value) {
    AthleteOptions.add(value);
  }

  void removeFromAthleteOptions(String value) {
    AthleteOptions.remove(value);
  }

  void removeAtIndexFromAthleteOptions(int index) {
    AthleteOptions.removeAt(index);
  }

  void updateAthleteOptionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    AthleteOptions[index] = updateFn(_AthleteOptions[index]);
  }

  void insertAtIndexInAthleteOptions(int index, String value) {
    AthleteOptions.insert(index, value);
  }

  bool _IsDealbreaker = false;
  bool get IsDealbreaker => _IsDealbreaker;
  set IsDealbreaker(bool value) {
    _IsDealbreaker = value;
  }
}
