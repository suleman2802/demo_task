import 'package:demo_task/domain/models/task.dart';

import 'task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl._internal();
  static TaskRepositoryImpl? _instance;

  factory TaskRepositoryImpl() {
    _instance ??= TaskRepositoryImpl._internal();
    return _instance!;
  }
  @override
  List<Task> getAllDemoTasks() {
    return [
      Task.create(title: 'Morning Walk', description: 'Take Tommy for a walk'),
      Task.create(
        title: 'Buy Groceries',
        description: 'Buy milk, eggs, and bread',
        status: TaskStatus.todo,
      ),
      Task.create(
        title: 'Review PRs',
        description: 'Review pull requests from the team',
        status: TaskStatus.inProgress,
      ),
      Task.create(
        title: 'Office Presentation',
        description: 'Create slides for the upcoming presentation',
        status: TaskStatus.completed,
      ),
    ];
  }
}
