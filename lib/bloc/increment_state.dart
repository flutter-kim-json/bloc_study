// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'increment_bloc.dart';

class IncrementState {
  final int count;

  IncrementState({required this.count});

  factory IncrementState.initial() => IncrementState(count: 0);

  @override
  String toString() => 'IncrementState(count: $count)';
}
