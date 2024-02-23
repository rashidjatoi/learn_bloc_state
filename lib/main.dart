import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc_state/cubit/cubit_counter/counter_cubit.dart';
import 'package:learn_bloc_state/screens/todo_cubit_screen/add_todo_cubit_screen.dart';
import 'package:learn_bloc_state/screens/todo_cubit_screen/todo_cubit_screen.dart';

import 'bloc/bloc_counter/counter_bloc.dart';
import 'cubit/todo_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
        BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
        BlocProvider<TodoCubit>(create: (context) => TodoCubit()),
      ],
      child: MaterialApp(
        title: 'Bloc',
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        // home: const HomeScreen(),
        initialRoute: '/',
        routes: {
          '/': (_) => const TodoCubitScreen(),
          '/add-todo': (_) => const AddTodoCubitScreen(),
        },
      ),
    );
  }
}
