part of 'todo_list_bloc.dart';

class TodoListState {
  final List<Todo> todos;
  TodoListState({
    required this.todos,
  });

  factory TodoListState.initial() {
    return TodoListState(todos: [
      Todo(id: '1', desc: 'Clean the room'),
      Todo(id: '2', desc: 'Washed dish'),
      Todo(id: '3', desc: 'Do homwork'),
    ]);
  }

  @override
  bool operator ==(covariant TodoListState other) {
    if (identical(this, other)) return true;

    return listEquals(other.todos, todos);
  }

  @override
  int get hashCode => todos.hashCode;

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }

  @override
  String toString() => 'TodoListState(todos: $todos)';
}
