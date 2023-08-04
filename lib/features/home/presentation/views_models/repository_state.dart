part of 'repository_cubit.dart';

@immutable
abstract class RepositoryState {}

class RepositoryInitial extends RepositoryState {}


class RepositorySearchState extends RepositoryState{}
class RepositoryLoadingState extends RepositoryState{}
class RepositorySuccessState extends RepositoryState{}
class RepositoryErrorState extends RepositoryState{}
