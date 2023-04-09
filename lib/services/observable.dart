import 'observer.dart';

abstract class Observable {
  List<Observer> _observers = [];

  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void notifyObservers() {
    for (Observer observer in _observers) {
      observer.update();
    }
  }
}
