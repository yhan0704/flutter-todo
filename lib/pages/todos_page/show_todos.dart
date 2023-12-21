import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/cubits/cubits.dart';

class ShowTodo extends StatelessWidget {
  const ShowTodo({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<FilteredTodosCubit>().state.filteredTodos;

    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: ValueKey(todos[index].id),
          child: Text(
            todos[index].desc,
            style: TextStyle(fontSize: 20.0),
          ),
          background: showBackground(0),
          secondaryBackground: showBackground(1),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey,
        );
      },
      itemCount: todos.length,
    );
  }

  Widget showBackground(int direction) {
    return Container(
      margin: EdgeInsets.all(4.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      color: Colors.red,
      alignment: direction == 0 ? Alignment.centerLeft : Alignment.centerRight,
      child: Icon(
        Icons.delete,
        size: 30.0,
        color: Colors.white,
      ),
    );
  }
}
