import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_task/features/home/presentation/views_models/repository_cubit.dart';
const List<int> list = [10, 50, 100];
class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  int? dropdownValue ;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: dropdownValue,
      isExpanded: true,
      hint: const Text('Select Number Of Repository'),
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.white,),
      borderRadius: BorderRadius.circular(16),

      onChanged: (int? value) {
        setState(() {
          dropdownValue = value!;
        });

          switch(value) {
            case 10: {  BlocProvider.of<RepositoryCubit>(context).numOfRepos=10; }
            break;

            case 50: {  BlocProvider.of<RepositoryCubit>(context).numOfRepos=50; }
            break;

            case 100: {  BlocProvider.of<RepositoryCubit>(context).numOfRepos=100; }
            break;
            default: { print("Invalid choice"); }
            break;
          }


      },
      items: list.map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text('$value'),
        );
      }).toList(),
    );
  }
}
