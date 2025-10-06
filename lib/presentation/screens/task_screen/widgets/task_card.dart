import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../configs/app_colors/app_colors.dart';
import '../../../../domain/models/task.dart';
import '../../../../utilities/app_alert_util/app_alert_utils.dart';
import '../cubit/tasks_state_cubit.dart';
import 'task_dialogue.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: ListTile(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => BlocProvider.value(
              value: context.read<TasksStateCubit>(),
              child: TaskDialog(existingTask: task),
            ),
          );
        },
        key: ValueKey(task.id),
        leading: Checkbox(
          value: task.status == TaskStatus.completed,
          onChanged: (_) {
            bool isStatusUpdated = context
                .read<TasksStateCubit>()
                .toggleTaskStatus(task);
            if (isStatusUpdated) {
              AppAlertUtil.showSuccess(context, "Task status updated");
            } else {
              AppAlertUtil.showError(context, "Failed to update task status");
            }
          },
        ),
        title: Text(task.title, style: Theme.of(context).textTheme.titleMedium),
        subtitle: task.description != null
            ? task.description!.length > 15
                  ? Text('${task.description!.substring(0, 11)}..')
                  : Text(task.description!)
            : null,
        trailing: IconButton(
          icon: Icon(Icons.delete_outline, color: AppColors.primaryRedColor),
          onPressed: () {
            bool isDeleted = context.read<TasksStateCubit>().deleteTask(
              task.id,
            );
            if (isDeleted) {
              AppAlertUtil.showSuccess(context, "Task Deleted Successfully");
            } else {
              AppAlertUtil.showError(context, "Failed to delete task");
            }
          },
        ),
      ),
    );
  }
}
