import 'package:bloc_study/bloc_provider.dart';
import 'package:bloc_study/counter_page.dart';
import 'package:bloc_study/increment_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<IncrementBloc>(
      bloc: IncrementBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: CounterPage(),
      ),
    );
  }
}
