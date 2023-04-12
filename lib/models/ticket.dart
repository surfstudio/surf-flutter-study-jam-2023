import 'dart:ffi';

import '../services/observable.dart';

class Ticket extends Observable {
  int? id;
  bool isLoaded = false;
  bool isLoading = false;
  int persentLoaded = 0;
  String? url;
  String? fileName;
  String? _filePath;

  String? get filePath => _filePath;

  set filePath(String? value) {
    _filePath = value;
    // todo: попробовать реализовать изменение через слушателя
    notifyObservers();
  }

  Ticket({required this.url});
}
