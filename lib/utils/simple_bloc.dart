import 'dart:async';

import 'package:rxdart/rxdart.dart';

class SimpleBloc<T> {
  late BehaviorSubject<T> _controller;
  SimpleBloc([initialValue]) {
    if (initialValue != null)
      _controller = BehaviorSubject<T>.seeded(initialValue);
    else
      _controller = BehaviorSubject<T>();
  }

  Stream<T> get stream => _controller.stream;

  T get value => _controller.value;

  add(T obj) {
    if (!_controller.isClosed) {
      _controller.add(obj);
    }
  }

  subscribe(Stream<T> s) {
    if (!_controller.isClosed) {
      s.listen((v) => add(v));
    }
  }

  addError(Object obj) {
    if (!_controller.isClosed) {
      _controller.addError(obj);
    }
  }

  dispose() {
    _controller.close();
  }
}
