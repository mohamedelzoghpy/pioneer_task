import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_task/features/home/data/repo/api_services.dart';

import 'core/utils/bloc_observer.dart';
import 'features/home/presentation/views/home_screen.dart';
import 'features/home/presentation/views_models/repository_cubit.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer=MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RepositoryCubit(),
      child: MaterialApp(
        theme: ThemeData.dark(

        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}

