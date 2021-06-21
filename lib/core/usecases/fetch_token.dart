/*
class FetchToken implements UseCase<Login, TokenParams> {
  final LoginRepository repository;

  FetchToken({required this.repository});

  @override
  Future<Either<Failure, Login>> call(TokenParams params) async {
    return await repository.fetchCachedToken();
  }
}

class TokenParams extends Equatable {
  @override
  List<Object> get props => throw ServerException();
}
*/
