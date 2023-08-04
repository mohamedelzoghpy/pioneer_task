import 'package:bloc/bloc.dart';
import 'package:git_task/features/home/data/models/home_model.dart';
import 'package:git_task/features/home/data/repo/api_services.dart';
import 'package:meta/meta.dart';

part 'repository_state.dart';

class RepositoryCubit extends Cubit<RepositoryState> {
   RepositoryCubit() : super(RepositoryInitial());
  RepositoryService repositoryService = RepositoryService();
  RepositoryModel? repositoryModel;
  List<RepositoryModel> repositoryList=[] ;
  String? date;
   int? numOfRepos;


   void getRepository({required String date}) async {
    try {

      emit(RepositoryLoadingState());
      repositoryList = await repositoryService.getData(date: date,numOfRepos: numOfRepos);
      emit(RepositorySuccessState());
    } catch (error) {
      emit(RepositoryErrorState());
      print(error);
    }
  }
}
