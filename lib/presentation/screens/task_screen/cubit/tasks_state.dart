import 'package:freezed_annotation/freezed_annotation.dart';
import 'tasks_list_state.dart';

part 'tasks_state.freezed.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState({
    @Default(TaskListState()) TaskListState todos,
    @Default(TaskListState()) TaskListState inProgress,
    @Default(TaskListState()) TaskListState completed,
  }) = _TasksState;
}
