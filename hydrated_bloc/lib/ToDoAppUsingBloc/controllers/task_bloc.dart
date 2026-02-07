import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:hydrated_bloc_app/models/task_model.dart';
import 'package:uuid/uuid.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends HydratedBloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial()) {
    // Add Task
    on<AddTaskEvent>((event, emit) {
      final task = TaskModel(
        id: const Uuid().v4(),
        title: event.title,
        isCompleted: false,
      );

      emit(TaskUpdated([...state.tasksList, task]));
    });

    // Remove Task
    on<RemoveTaskEvent>((event, emit) {
      final List<TaskModel> newList = state.tasksList
          .where((t) => t.id != event.id)
          .toList();

      emit(TaskUpdated(newList));
    });

    // Toggle Task
    on<ToggleTaskEvent>((event, emit) {
      final List<TaskModel> newList = state.tasksList.map((task) {
        return task.id == event.id
            ? task.copyWith(isCompleted: !task.isCompleted)
            : task;
      }).toList();

      emit(TaskUpdated(newList));
    });
  }

  // return data from json
  @override
  TaskState? fromJson(Map<String, dynamic> json) {
    return TaskUpdated(
      (json['todoList'] as List)
          .map((item) => TaskModel.fromJson(item))
          .toList(),
    );
  }

  // srore data to json
  @override
  Map<String, dynamic>? toJson(TaskState state) {
    return {"todoList": state.tasksList.map((todo) => todo.toJson()).toList()};
  }
}
