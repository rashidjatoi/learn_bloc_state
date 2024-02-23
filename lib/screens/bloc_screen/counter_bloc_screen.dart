import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc_state/bloc/counter_bloc.dart';

class CounterBlocScreen extends StatelessWidget {
  const CounterBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
        centerTitle: true,
        elevation: 0.9,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.rotate_left,
            ),
          )
        ],
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final bloc = context.read<CounterBloc>();
          bloc.add(CounterIncremented());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
