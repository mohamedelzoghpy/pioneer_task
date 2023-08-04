import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_task/features/home/data/models/home_model.dart';
import 'package:git_task/features/home/presentation/views/widgets/repository_card.dart';
import 'package:git_task/features/home/presentation/views_models/repository_cubit.dart';

class SearchList extends StatelessWidget {
  const SearchList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RepositoryModel repositoryData;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
            child: Text(
              'Repositories',
              style: TextStyle(fontSize: 24),
            ),
          ),
          ListView.builder(
              itemCount: BlocProvider.of<RepositoryCubit>(context)
                  .repositoryList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                repositoryData =
                BlocProvider.of<RepositoryCubit>(context)
                    .repositoryList[index];
                return RepositoryCard(repositoryData: repositoryData);
              }),
        ],
      ),
    );
  }
}
