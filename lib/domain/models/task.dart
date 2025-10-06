import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

enum TaskStatus { todo, inProgress, completed }

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String title,
    String? description,
    @Default(TaskStatus.todo) TaskStatus status,
    required DateTime createdAt,
  }) = _Task;

  factory Task.create({
    required String title,
    String? description,
    TaskStatus status = TaskStatus.todo,
  }) {
    return Task(
      id: DateTime.now().toIso8601String(),
      title: title,
      description: description,
      status: status,
      createdAt: DateTime.now(),
    );
  }
}
