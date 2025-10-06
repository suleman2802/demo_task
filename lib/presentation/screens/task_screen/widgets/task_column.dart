import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../configs/app_colors/app_colors.dart';
import '../../../../domain/models/task.dart';
import '../cubit/tasks_list_state.dart';
import '../cubit/tasks_state.dart';
import '../cubit/tasks_state_cubit.dart';
import 'task_card.dart';

class TaskColumn extends StatelessWidget {
  final TaskStatus status;
  final String title;

  const TaskColumn({super.key, required this.status, required this.title});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<TasksStateCubit, TasksState, TaskListState>(
      selector: (state) {
        switch (status) {
          case TaskStatus.todo:
            return state.todos;
          case TaskStatus.inProgress:
            return state.inProgress;
          case TaskStatus.completed:
            return state.completed;
        }
      },
      builder: (context, listState) {
        if (listState.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return Card(
          color: AppColors.skyBlueColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$title (${listState.tasks.length})',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              listState.tasks.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: listState.tasks.length,
                        itemBuilder: (_, i) =>
                            TaskCard(task: listState.tasks[i]),
                      ),
                    )
                  : Center(child: Text('No tasks in $title List')),
            ],
          ),
        );
      },
    );
  }
}
