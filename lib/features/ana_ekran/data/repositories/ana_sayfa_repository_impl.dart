import 'package:dartz/dartz.dart';
import 'package:on_muhasebe/core/error/failures.dart';
import 'package:on_muhasebe/core/network/network_info.dart';
import 'package:on_muhasebe/features/ana_ekran/data/datasources/ana_sayfa_local_data_source.dart';
import 'package:on_muhasebe/features/ana_ekran/data/datasources/ana_sayfa_remote_data_source.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/ana_sayfa.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/repositories/ana_sayfa_repository.dart';

class AnaSayfaRepositoryImpl implements AnaSayfaRepository {
  final AnaSayfaRemoteDataSource remoteDataSource;
  final AnaSayfaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AnaSayfaRepositoryImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, AnaSayfa>> getAnaSayfa(
      DateTime beforeDate, DateTime afterDate) {
    // TODO: implement getAnaSayfa
    throw UnimplementedError();
  }
}
