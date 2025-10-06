// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TaskListState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskListStateCopyWith<TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
    TaskListState value,
    $Res Function(TaskListState) then,
  ) = _$TaskListStateCopyWithImpl<$Res, TaskListState>;
  @useResult
  $Res call({List<Task> tasks, bool isLoading, String? error});
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res, $Val extends TaskListState>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            tasks: null == tasks
                ? _value.tasks
                : tasks // ignore: cast_nullable_to_non_nullable
                      as List<Task>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskListStateImplCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$TaskListStateImplCopyWith(
    _$TaskListStateImpl value,
    $Res Function(_$TaskListStateImpl) then,
  ) = __$$TaskListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> tasks, bool isLoading, String? error});
}

/// @nodoc
class __$$TaskListStateImplCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListStateImpl>
    implements _$$TaskListStateImplCopyWith<$Res> {
  __$$TaskListStateImplCopyWithImpl(
    _$TaskListStateImpl _value,
    $Res Function(_$TaskListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$TaskListStateImpl(
        tasks: null == tasks
            ? _value._tasks
            : tasks // ignore: cast_nullable_to_non_nullable
                  as List<Task>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$TaskListStateImpl implements _TaskListState {
  const _$TaskListStateImpl({
    final List<Task> tasks = const [],
    this.isLoading = false,
    this.error,
  }) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'TaskListState(tasks: $tasks, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_tasks),
    isLoading,
    error,
  );

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListStateImplCopyWith<_$TaskListStateImpl> get copyWith =>
      __$$TaskListStateImplCopyWithImpl<_$TaskListStateImpl>(this, _$identity);
}

abstract class _TaskListState implements TaskListState {
  const factory _TaskListState({
    final List<Task> tasks,
    final bool isLoading,
    final String? error,
  }) = _$TaskListStateImpl;

  @override
  List<Task> get tasks;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of TaskListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskListStateImplCopyWith<_$TaskListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
