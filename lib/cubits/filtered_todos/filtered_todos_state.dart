// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'filtered_todos_cubit.dart';

class FilteredTodosState {
  final List<Todo> filteredTodos;
  FilteredTodosState({
    required this.filteredTodos,
  });

  factory FilteredTodosState.initial() {
    return FilteredTodosState(filteredTodos: []);
  }

  @override
  bool operator ==(covariant FilteredTodosState other) {
    if (identical(this, other)) return true;

    return listEquals(other.filteredTodos, filteredTodos);
  }

  @override
  int get hashCode => filteredTodos.hashCode;

  FilteredTodosState copyWith({
    List<Todo>? filteredTodos,
  }) {
    return FilteredTodosState(
      filteredTodos: filteredTodos ?? this.filteredTodos,
    );
  }

  @override
  String toString() => 'FilteredTodosState(filteredTodos: $filteredTodos)';
}
