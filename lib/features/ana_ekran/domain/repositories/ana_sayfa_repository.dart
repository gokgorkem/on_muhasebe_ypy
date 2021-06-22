import 'package:dartz/dartz.dart';
import 'package:on_muhasebe/core/error/failures.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/ana_sayfa.dart';

abstract class AnaSayfaRepository {
  Future<Either<Failure, AnaSayfa>> getAnaSayfa(
      DateTime beforeDate, DateTime afterDate);
}
