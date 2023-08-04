import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_task/features/home/presentation/views_models/repository_cubit.dart';
import 'package:git_task/features/search/presentation/views/widgets/search_screen_body.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? date  ;
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
          body: SearhScreenBody(),
        );


  }
}
