import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/ana_sayfa.dart';

@immutable
abstract class AnaSayfaState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends AnaSayfaState {}

class Loading extends AnaSayfaState {}

class Loaded extends AnaSayfaState {
  final AnaSayfa anasayfa;

  Loaded({required this.anasayfa});

  @override
  List<Object> get props => [anasayfa];
}

class Error extends AnaSayfaState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}
