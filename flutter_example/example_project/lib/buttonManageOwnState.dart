import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActiveState {
  final bool isActive;

  ActiveState({required this.isActive});

  ActiveState copyWith({bool? isActive}) {
    return ActiveState(
      isActive: isActive ?? this.isActive,
    );
  }
}

//cubit
class ActiveCubit extends Cubit<ActiveState> {
  ActiveCubit() : super(ActiveState(isActive: false));

  void toggleActive() {
    final currentState = state;
    final newIsActive = !currentState.isActive;

    emit(currentState.copyWith(isActive: newIsActive));
  }
}

// TapboxA manages its own state.

//------------------------- TapboxA ----------------------------------

class TapboxA extends StatelessWidget {
  const TapboxA({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActiveCubit, ActiveState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () =>
                context.read<ActiveCubit>().toggleActive(),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: state.isActive ? Colors.lightGreen[700] : Colors.grey[600],
              ),
              child: Center(
                child: Text(
                  state.isActive ? 'Active' : 'Inactive',
                  style: const TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ),
          );
        }
    );
  }
}

//------------------------- MyApp ----------------------------------

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo')),
        body: Center(
          child: BlocProvider(
              create: (context) => ActiveCubit(),
              child: TapboxA()
          ),
        ),
      ),);
  }
}
