import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../configs/dimensions/dimensions.dart';
import '../../../domain/models/task.dart';
import 'cubit/tasks_state_cubit.dart';
import 'widgets/task_column.dart';
import 'widgets/task_dialogue.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Task'),
        actions: [
          ElevatedButton(
            onPressed: () {
              context.read<TasksStateCubit>().loadAll();
            },
            child: const Text("Load Dummy Data"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            SizedBox(
              width: dimensions.width70,
              child: TaskColumn(
                status: TaskStatus.todo,
                title: 'To Do',

              ),
            ),
            VerticalDivider(width: 2),
            SizedBox(
              width: dimensions.width70,
              child: TaskColumn(
                status: TaskStatus.inProgress,
                title: 'In Progress',

              ),
            ),
            VerticalDivider(width: 2),
            SizedBox(
              width: dimensions.width70,
              child: TaskColumn(
                status: TaskStatus.completed,
                title: 'Completed',

              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => BlocProvider.value(
              value: context.read<TasksStateCubit>(),
              child: const TaskDialog(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
