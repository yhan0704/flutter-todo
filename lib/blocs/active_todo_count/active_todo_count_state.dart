part of 'active_todo_count_bloc.dart';

class ActiveTodoCountState {
  final int activeTodoCount;
  ActiveTodoCountState({
    required this.activeTodoCount,
  });

  factory ActiveTodoCountState.initial() {
    return ActiveTodoCountState(activeTodoCount: 0);
  }

  @override
  bool operator ==(covariant ActiveTodoCountState other) {
    if (identical(this, other)) return true;

    return other.activeTodoCount == activeTodoCount;
  }

  @override
  int get hashCode => activeTodoCount.hashCode;

  ActiveTodoCountState copyWith({
    int? activeTodoCount,
  }) {
    return ActiveTodoCountState(
      activeTodoCount: activeTodoCount ?? this.activeTodoCount,
    );
  }

  @override
  String toString() =>
      'ActiveTodoCountState(activeTodoCount: $activeTodoCount)';
}
