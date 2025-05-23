/// {@template todos_api}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
import 'package:todos_api/todos_api.dart';

abstract class TodosApi {
  /// {@macro todos_api}
  const TodosApi();

  /// Provides a [Stream] of all todos.
  Stream<List<Todo>> getTodos();

  /// Saves a [todo].
  ///
  /// If a [todo] with the same id already exists, it will be replaced.
  Future<void> saveTodo(Todo todo);

  /// Deletes the `todo` with the given id.
  ///
  /// If no `todo` with the given id exists, a [TodoNotFoundException] error is
  /// thrown.
  Future<void> deleteTodo(String id);

  /// Deletes all completed todos.
  ///
  /// Returns the number of deleted todos.
  Future<int> clearCompleted();

  /// Sets the `isCompleted` state of all todos to the given value.
  ///
  /// Returns the number of updated todos.
  Future<int> completeAll({required bool isCompleted});

  /// Closes the client and frees up any resources.
  Future<void> close();
}

/// Error thrown when a [Todo] with a given id is not found.
class TodoNotFoundException implements Exception {}