import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_task/core/utils/dropdownbutton.dart';
import 'package:git_task/features/home/presentation/views/home_screen.dart';
import 'package:git_task/features/home/presentation/views_models/repository_cubit.dart';

class SearhScreenBody extends StatelessWidget {
  SearhScreenBody({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepositoryCubit, RepositoryState>(
      builder: (context, state) {
        return Container(
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (value) {
                      BlocProvider.of<RepositoryCubit>(context)
                          .getRepository(date: value);
                      BlocProvider
                          .of<RepositoryCubit>(context)
                          .date = value;
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                      }
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Input must not be Empty";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter The Year',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                  const DropdownButtonExample(),


                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
