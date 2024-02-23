import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc_state/cubit/todo_cubit/todo_cubit.dart';

class AddTodoCubitScreen extends StatelessWidget {
  const AddTodoCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController todoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
        centerTitle: true,
        elevation: 0.9,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: todoController,
                decoration: const InputDecoration(
                  hintText: 'Title',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<TodoCubit>()
                      .addTodo(todoController.text.trim().toString());
                  todoController.text = '';
                },
                child: const Text('Add'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
