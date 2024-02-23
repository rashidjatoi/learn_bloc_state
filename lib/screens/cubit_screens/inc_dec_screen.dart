import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc_state/cubit/cubit_counter/counter_cubit.dart';

class IncDecScreen extends StatelessWidget {
  const IncDecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inc Dec'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cubit.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
