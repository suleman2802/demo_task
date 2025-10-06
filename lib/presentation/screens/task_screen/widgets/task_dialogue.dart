import 'package:demo_task/configs/dimensions/dimensions.dart';
import 'package:demo_task/utilities/app_alert_util/app_alert_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/models/task.dart';
import '../cubit/tasks_state_cubit.dart';

class TaskDialog extends StatefulWidget {
  final Task? existingTask;
  const TaskDialog({super.key, this.existingTask});

  @override
  State<TaskDialog> createState() => _TaskDialogState();
}

class _TaskDialogState extends State<TaskDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _titleController;
  late TextEditingController _descController;
  late TaskStatus _selectedStatus;

  bool get isEditing => widget.existingTask != null;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(
      text: widget.existingTask?.title ?? '',
    );
    _descController = TextEditingController(
      text: widget.existingTask?.description ?? '',
    );
    _selectedStatus = widget.existingTask?.status ?? TaskStatus.todo;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return AlertDialog(
      title: Text(isEditing ? 'View / Edit Task' : 'Add Task'),
      content: SizedBox(
        width: dimensions.width70,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Title is required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _descController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<TaskStatus>(
                  initialValue: _selectedStatus,
                  decoration: const InputDecoration(
                    labelText: 'Task Type',
                    border: OutlineInputBorder(),
                  ),
                  items: TaskStatus.values.map((status) {
                    return DropdownMenuItem(
                      value: status,
                      child: Text(status.name.toUpperCase()),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) setState(() => _selectedStatus = value);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              final newTask = (widget.existingTask != null)
                  ? widget.existingTask!.copyWith(
                      title: _titleController.text.trim(),
                      description: _descController.text.trim(),
                      status: _selectedStatus,
                    )
                  : Task.create(
                      title: _titleController.text.trim(),
                      description: _descController.text.trim(),
                      status: _selectedStatus,
                    );

              final cubit = context.read<TasksStateCubit>();
              if (widget.existingTask == null) {
                bool isAdded = cubit.addTask(newTask);
                if (isAdded) {
                  AppAlertUtil.showSuccess(
                    context,
                    "New Task Added Successfully",
                  );
                } else {
                  AppAlertUtil.showError(context, "Failed to add new task");
                }
              } else {
                bool isUpdated = cubit.editTask(newTask);
                if (isUpdated) {
                  AppAlertUtil.showSuccess(
                    context,
                    "Task Updated Successfully",
                  );
                } else {
                  AppAlertUtil.showError(context, "Failed to update task");
                }
              }

              Navigator.pop(context);
            }
          },
          child: Text(isEditing ? 'Update' : 'Add'),
        ),
      ],
    );
  }
}
