import 'dart:convert';
import 'package:git_task/features/home/data/models/home_model.dart';
import 'package:http/http.dart'as http;

class RepositoryService{
  String baseUrl ='https://api.github.com/search/repositories';
  List<RepositoryModel> repositoryList=[];

  Future<List<RepositoryModel>> getData({required String date,int? numOfRepos})async {
    http.Response response = await http.get(
        Uri.parse('$baseUrl?q=created:>$date&sort=stars&order=desc&per_page=$numOfRepos'));


   var data= jsonDecode(response.body);
    repositoryList=[];
      for(var item in data['items']){

        repositoryList.add(RepositoryModel.fromJson(item));
      }


    return  repositoryList;



  }
}
