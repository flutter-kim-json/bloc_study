import 'package:flutter/material.dart';

import 'bloc/increment_bloc.dart';

class CounterPage extends StatelessWidget {
  final bloc = IncrementBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stream version of the Counter App')),
      body: Center(
        child: StreamBuilder<IncrementState>(
            stream: bloc.stream,
            builder: (context, snapshot) {
              print('snashot data : ${snapshot.data}');
              return Text('You hit me: ${snapshot.data?.count} times');
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          bloc.add(AddEvent());
        },
      ),
    );
  }
}
