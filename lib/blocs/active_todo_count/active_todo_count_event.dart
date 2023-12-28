// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'active_todo_count_bloc.dart';

sealed class ActiveTodoCountEvent extends Equatable {
  const ActiveTodoCountEvent();

  @override
  List<Object> get props => [];
}

class CalculateActiveTodoCount extends ActiveTodoCountEvent {
  final int activeTodoCount;
  CalculateActiveTodoCount({
    required this.activeTodoCount,
  });

  @override
  String toString() =>
      'CalculateActiveTodoCount(activeTodoCount: $activeTodoCount)';

  @override
  List<Object> get props => [activeTodoCount];
}




  // void calculateActiveTodoCount(int activeTodoCount) {
  //   emit(state.copyWith(activeTodoCount: activeTodoCount));
  // }