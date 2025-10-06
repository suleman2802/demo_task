import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/task.dart';


part 'tasks_list_state.freezed.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState({
    @Default([]) List<Task> tasks,
    @Default(false) bool isLoading,
    String? error,
  }) = _TaskListState;
}
