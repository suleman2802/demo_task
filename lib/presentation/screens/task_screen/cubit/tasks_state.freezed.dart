// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TasksState {
  TaskListState get todos => throw _privateConstructorUsedError;
  TaskListState get inProgress => throw _privateConstructorUsedError;
  TaskListState get completed => throw _privateConstructorUsedError;

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
    TasksState value,
    $Res Function(TasksState) then,
  ) = _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call({
    TaskListState todos,
    TaskListState inProgress,
    TaskListState completed,
  });

  $TaskListStateCopyWith<$Res> get todos;
  $TaskListStateCopyWith<$Res> get inProgress;
  $TaskListStateCopyWith<$Res> get completed;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? inProgress = null,
    Object? completed = null,
  }) {
    return _then(
      _value.copyWith(
            todos: null == todos
                ? _value.todos
                : todos // ignore: cast_nullable_to_non_nullable
                      as TaskListState,
            inProgress: null == inProgress
                ? _value.inProgress
                : inProgress // ignore: cast_nullable_to_non_nullable
                      as TaskListState,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as TaskListState,
          )
          as $Val,
    );
  }

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskListStateCopyWith<$Res> get todos {
    return $TaskListStateCopyWith<$Res>(_value.todos, (value) {
      return _then(_value.copyWith(todos: value) as $Val);
    });
  }

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskListStateCopyWith<$Res> get inProgress {
    return $TaskListStateCopyWith<$Res>(_value.inProgress, (value) {
      return _then(_value.copyWith(inProgress: value) as $Val);
    });
  }

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskListStateCopyWith<$Res> get completed {
    return $TaskListStateCopyWith<$Res>(_value.completed, (value) {
      return _then(_value.copyWith(completed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TasksStateImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksStateImplCopyWith(
    _$TasksStateImpl value,
    $Res Function(_$TasksStateImpl) then,
  ) = __$$TasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TaskListState todos,
    TaskListState inProgress,
    TaskListState completed,
  });

  @override
  $TaskListStateCopyWith<$Res> get todos;
  @override
  $TaskListStateCopyWith<$Res> get inProgress;
  @override
  $TaskListStateCopyWith<$Res> get completed;
}

/// @nodoc
class __$$TasksStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateImpl>
    implements _$$TasksStateImplCopyWith<$Res> {
  __$$TasksStateImplCopyWithImpl(
    _$TasksStateImpl _value,
    $Res Function(_$TasksStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? inProgress = null,
    Object? completed = null,
  }) {
    return _then(
      _$TasksStateImpl(
        todos: null == todos
            ? _value.todos
            : todos // ignore: cast_nullable_to_non_nullable
                  as TaskListState,
        inProgress: null == inProgress
            ? _value.inProgress
            : inProgress // ignore: cast_nullable_to_non_nullable
                  as TaskListState,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as TaskListState,
      ),
    );
  }
}

/// @nodoc

class _$TasksStateImpl implements _TasksState {
  const _$TasksStateImpl({
    this.todos = const TaskListState(),
    this.inProgress = const TaskListState(),
    this.completed = const TaskListState(),
  });

  @override
  @JsonKey()
  final TaskListState todos;
  @override
  @JsonKey()
  final TaskListState inProgress;
  @override
  @JsonKey()
  final TaskListState completed;

  @override
  String toString() {
    return 'TasksState(todos: $todos, inProgress: $inProgress, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateImpl &&
            (identical(other.todos, todos) || other.todos == todos) &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todos, inProgress, completed);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      __$$TasksStateImplCopyWithImpl<_$TasksStateImpl>(this, _$identity);
}

abstract class _TasksState implements TasksState {
  const factory _TasksState({
    final TaskListState todos,
    final TaskListState inProgress,
    final TaskListState completed,
  }) = _$TasksStateImpl;

  @override
  TaskListState get todos;
  @override
  TaskListState get inProgress;
  @override
  TaskListState get completed;

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
