import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title Cannot be Empty');
      return;
    }

    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );

    state.add(todo);
    emit(List.from(state));

    // or
    // emit([...state, todo]);
  }

  // SHOWING CHANGES
  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    debugPrint(change.toString());
  }

  // SHOWING ERROR
  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    debugPrint('Todo Cubit Error - ${error.toString()}');
  }

  // REMOVE TODOO
  void removeTodo(Todo todoToRemove) {
    state.remove(todoToRemove);
    emit(List.from(state));
  }
}
