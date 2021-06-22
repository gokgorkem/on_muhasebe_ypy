import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/ana_sayfa.dart';

@immutable
abstract class AnaSayfaEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetAnaSayfa extends AnaSayfaEvent {
  final AnaSayfa anaSayfa;

  GetAnaSayfa({required this.anaSayfa});

  @override
  List<Object> get props => [anaSayfa];
}
