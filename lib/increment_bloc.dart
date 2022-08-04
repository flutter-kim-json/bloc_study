import 'dart:async';

class IncrementBloc implements BlocBase {
  int _counter = 0;

  //
  // Stream to handle the counter
  //
  StreamController<int> _counterController = StreamController<int>.broadcast();
  StreamSink<int> get _inAdd => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  //
  // Stream to handle the action on the counter
  //
  StreamController _actionController = StreamController();
  StreamSink get incrementCounter => _actionController.sink;

  //
  // Constructor
  //
  IncrementBloc() {
    _actionController.stream.listen(_handleLogic);
  }

  @override
  void dispose() {
    _actionController.close();
    _counterController.close();
  }

  void _handleLogic(data) {
    print('handle logic $data');
    _counter = _counter + 1;
    _inAdd.add(_counter);
  }
}

abstract class BlocBase {
  void dispose();
}
