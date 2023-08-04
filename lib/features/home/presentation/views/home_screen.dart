import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_task/features/home/presentation/views_models/repository_cubit.dart';
import 'package:git_task/features/search/presentation/search_screen.dart';

import 'widgets/appbar_with_search.dart';
import 'widgets/search_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSearch(
        title: 'Welcome',
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const SearchPage(),
          ));
        },
      ),
      body: BlocConsumer<RepositoryCubit, RepositoryState>(
        builder: (context, state) {

          if (state is RepositoryLoadingState) {

            return const Center(
              child: CircularProgressIndicator(color: Colors.white),
            );

          } else if (state is RepositorySuccessState) {
            return const SearchList();
          } else if (state is RepositoryErrorState) {
            return  const Center(
                child: Text('P'
                    'please Return And  Type Right Date '));
          } else {
            return const Center(
                child: Text('Search For Repositories You Need'));
          }
        },
        listener: (context, state) {

        },
      ),
    );
  }
}


