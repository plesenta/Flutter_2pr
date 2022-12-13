import 'package:withsqlite/domain/entity/provideraddress_entity.dart';

class ProviderEntity {
  late int id;
  final String name;
  final ProviderAddressEnum id_provideraddress;

  ProviderEntity({
    this.id = 0,
    required this.name,
    required this.id_provideraddress,
  });
}

enum ProviderEnum {
  provider1(id: 1, name: 'Пользователь 1', id_provideraddress: '123'),
  provider2(id: 2, name: 'Пользователь 2', id_provideraddress: '456');

  const ProviderEnum({
    required this.id,
    required this.name,
    required this.id_provideraddress,
  });

  final int id;
  final String name;
  final String id_provideraddress;
}
