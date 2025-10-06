import 'package:demo_task/configs/app_theme/app_theme.dart';
import 'package:demo_task/domain/repository/task_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/screens/task_screen/cubit/tasks_state_cubit.dart';
import 'presentation/screens/task_screen/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().get(),
      home: BlocProvider<TasksStateCubit>(
        create: (context) => TasksStateCubit(TaskRepositoryImpl()),
        child: const TaskScreen(),
      ),
    );
  }
}
