import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(1);

  void increment() => emit(state + 1);
}

// class CounterCubit extends Cubit<int> {
//   CounterCubit(int initialState) : super(initialState);
// }

void main() {
  final cubit = CounterCubit();
  print(cubit.state);
  cubit.increment();
  print(cubit.state);
  cubit.close();
}