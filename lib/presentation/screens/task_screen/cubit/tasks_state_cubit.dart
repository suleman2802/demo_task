import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/models/task.dart';
import '../../../../domain/repository/task_repository.dart';
import 'tasks_state.dart';

class TasksStateCubit extends Cubit<TasksState> {
  final TaskRepository repository;

  TasksStateCubit(this.repository) : super(const TasksState());

  void loadAll() async {
    emit(
      state.copyWith(
        todos: state.todos.copyWith(isLoading: true),
        inProgress: state.inProgress.copyWith(isLoading: true),
        completed: state.completed.copyWith(isLoading: true),
      ),
    );
    final List<Task> demoTaskList = repository.getAllDemoTasks();
    _updateLists(demoTaskList);
  }

  void _updateLists(List<Task> all) {
    emit(
      state.copyWith(
        todos: state.todos.copyWith(
          tasks: all.where((t) => t.status == TaskStatus.todo).toList(),
          isLoading: false,
        ),
        inProgress: state.inProgress.copyWith(
          tasks: all.where((t) => t.status == TaskStatus.inProgress).toList(),
          isLoading: false,
        ),
        completed: state.completed.copyWith(
          tasks: all.where((t) => t.status == TaskStatus.completed).toList(),
          isLoading: false,
        ),
      ),
    );
  }

  bool addTask(Task task) {
    try {
      switch (task.status) {
        case TaskStatus.todo:
          emit(
            state.copyWith(
              todos: state.todos.copyWith(tasks: [task, ...state.todos.tasks]),
            ),
          );
          return true;
        case TaskStatus.inProgress:
          emit(
            state.copyWith(
              inProgress: state.inProgress.copyWith(
                tasks: [task, ...state.inProgress.tasks],
              ),
            ),
          );
          return true;
        case TaskStatus.completed:
          emit(
            state.copyWith(
              completed: state.completed.copyWith(
                tasks: [task, ...state.completed.tasks],
              ),
            ),
          );
          return true;
      }
    } on Exception catch (e) {
      log("error in adding task : $e");
      return false;
    }
  }

  bool editTask(Task updated) {
    try {
      _replaceTask(updated);
      return true;
    } on Exception catch (e) {
      log("Error in editing task : $e");
      return false;
    }
  }

  void _replaceTask(Task updated) {
    bool flag =
        false; //? to check if we need to add the updated task to other status list
    final todosListCopy = List<Task>.from(state.todos.tasks);
    final inProgressListCopy = List<Task>.from(state.inProgress.tasks);
    final completedListCopy = List<Task>.from(state.completed.tasks);
    int indexTodos = todosListCopy.indexWhere((t) => t.id == updated.id);
    if (indexTodos != -1) {
      if (updated.status == TaskStatus.todo) {
        todosListCopy[indexTodos] = updated;
      } else {
        todosListCopy.removeAt(indexTodos);
        flag = true;
      }
    }
    if (!flag) {
      int indexInProgress = inProgressListCopy.indexWhere(
        (t) => t.id == updated.id,
      );

      if (indexInProgress != -1) {
        if (updated.status == TaskStatus.inProgress) {
          inProgressListCopy[indexInProgress] = updated;
        } else {
          inProgressListCopy.removeAt(indexInProgress);
          flag = true;
        }
      }
    }
    if (!flag) {
      int indexCompleted = completedListCopy.indexWhere(
        (t) => t.id == updated.id,
      );
      if (indexCompleted != -1) {
        if (updated.status == TaskStatus.completed) {
          completedListCopy[indexCompleted] = updated;
        } else {
          completedListCopy.removeAt(indexCompleted);
          flag = true;
        }
      }
    }

    //? based on flag we will add the updated task to its new list
    if (flag) {
      switch (updated.status) {
        case TaskStatus.todo:
          todosListCopy.add(updated);
          break;
        case TaskStatus.inProgress:
          inProgressListCopy.add(updated);
          break;
        case TaskStatus.completed:
          completedListCopy.add(updated);
          break;
      }
    }
    emit(
      state.copyWith(
        todos: state.todos.copyWith(tasks: List<Task>.from(todosListCopy)),
        inProgress: state.inProgress.copyWith(
          tasks: List<Task>.from(inProgressListCopy),
        ),
        completed: state.completed.copyWith(
          tasks: List<Task>.from(completedListCopy),
        ),
      ),
    );
  }

  bool deleteTask(String id) {
    try {
      emit(
        state.copyWith(
          todos: state.todos.copyWith(
            tasks: state.todos.tasks.where((t) => t.id != id).toList(),
          ),
          inProgress: state.inProgress.copyWith(
            tasks: state.inProgress.tasks.where((t) => t.id != id).toList(),
          ),
          completed: state.completed.copyWith(
            tasks: state.completed.tasks.where((t) => t.id != id).toList(),
          ),
        ),
      );
      return true;
    } on Exception catch (e) {
      log("Error in deleting task : $e");
      return false;
    }
  }

  bool toggleTaskStatus(Task task) {
    try {
      final newStatus = _nextStatus(task.status);
      final updated = task.copyWith(status: newStatus);
      _replaceTask(updated);
      return true;
    } on Exception catch (e) {
      log("Error in toggling task status : $e");
      return false;
    }
  }

  TaskStatus _nextStatus(TaskStatus s) {
    switch (s) {
      case TaskStatus.todo:
        return TaskStatus.inProgress;
      case TaskStatus.inProgress:
        return TaskStatus.completed;
      case TaskStatus.completed:
        return TaskStatus.todo;
    }
  }
}
