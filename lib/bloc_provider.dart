import 'package:bloc_study/increment_bloc.dart';
import 'package:flutter/material.dart';

class BlocProvider<T extends BlocBase> extends StatefulWidget {
  const BlocProvider({Key? key, required this.child, required this.bloc})
      : super(key: key);

  final T bloc;
  final Widget child;

  @override
  State<BlocProvider> createState() => _BlocProviderState();

  static T of<T extends BlocBase>(BuildContext context) {
    BlocProvider<T>? provider =
        context.findAncestorWidgetOfExactType<BlocProvider<T>>();

    assert(provider != null);
    return provider!.bloc;
  }
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
