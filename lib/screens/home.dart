import 'package:flutter/material.dart';
import 'package:learn_bloc_state/screens/counter_bloc_screen/counter_bloc_screen.dart';
import 'package:learn_bloc_state/screens/counter_cubit_screens/counter_cubit_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Counter'),
        centerTitle: true,
        elevation: 0.9,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterCubitScreen(),
                  ),
                );
              },
              child: const Text('Counter Cubit'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterBlocScreen(),
                  ),
                );
              },
              child: const Text('Counter Bloc'),
            ),
          ],
        ),
      ),
    );
  }
}
