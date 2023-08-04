import 'package:flutter/material.dart';
import 'package:git_task/features/home/data/models/home_model.dart';

class RepositoryCard extends StatelessWidget {
  RepositoryCard({
    required this.repositoryData,
    super.key,
  });

  RepositoryModel repositoryData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white24,
      margin: const EdgeInsets.all(5),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
          Row(
            children: [
           
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.network('${repositoryData!.owner!.avatarUrl}'),
              ),
              const SizedBox(width: 5,),
              Expanded(
                child: Text(
                  '${repositoryData!.name}',
                  style: const TextStyle(
                    fontSize: 20,
                      overflow: TextOverflow.ellipsis,),
                  maxLines: 2,
                ),
              ),
            ],
          ),
         const SizedBox(height: 5,),
          Text(
            'CreatedAt: ${repositoryData.createdAt}',
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 5,),

          Text(
            '${repositoryData!.description}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5,),

          Row(
            children: [
              const Icon(
                Icons.star_border_purple500_outlined,
                color: Colors.grey,
              ),
              Text('${repositoryData!.stargazersCount}'),
              const Spacer(),
              const Icon(
                Icons.circle,
                color: Colors.green,
                size: 10,
              ),
              Text(
                ' ${repositoryData!.language}',
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
