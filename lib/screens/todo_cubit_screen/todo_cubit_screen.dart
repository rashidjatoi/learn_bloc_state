import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc_state/cubit/todo_cubit.dart';
import 'package:learn_bloc_state/models/todo_model.dart';

class TodoCubitScreen extends StatelessWidget {
  const TodoCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        centerTitle: true,
        elevation: 0.9,
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (BuildContext context, int index) {
              final todo = state[index];
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade100,
                    strokeAlign: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  title: Text(todo.name),
                  subtitle: Text(todo.createdAt.toString()),
                  trailing: IconButton(
                    onPressed: () {
                      context.read<TodoCubit>().removeTodo(todo);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-todo');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
