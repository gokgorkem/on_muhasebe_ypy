import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:on_muhasebe/core/error/failures.dart';
import 'package:on_muhasebe/core/usecases/usecase.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/ana_sayfa.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/repositories/ana_sayfa_repository.dart';

class GetAnaSayfa implements UseCase<AnaSayfa, Params> {
  final AnaSayfaRepository repository;

  GetAnaSayfa({required this.repository});

  @override
  Future<Either<Failure, AnaSayfa>> call(Params params) async {
    return await repository.getAnaSayfa(params.beforeDate, params.afterDate);
  }
}

class Params extends Equatable {
  final DateTime beforeDate;
  final DateTime afterDate;

  Params(this.beforeDate, this.afterDate);

  @override
  List<Object?> get props => throw UnimplementedError();
}
