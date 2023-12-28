import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'active_todo_count_event.dart';
part 'active_todo_count_state.dart';

class ActiveTodoCountBloc
    extends Bloc<ActiveTodoCountEvent, ActiveTodoCountState> {
  ActiveTodoCountBloc() : super(ActiveTodoCountState.initial()) {
    on<CalculateActiveTodoCount>((event, emit) {
      emit(state.copyWith(activeTodoCount: event.activeTodoCount));
    });
  }
}
