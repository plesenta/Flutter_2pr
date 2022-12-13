import 'package:withsqlite/data/model/user.dart';
import 'package:withsqlite/domain/entity/producttype_entity.dart';
import 'package:withsqlite/domain/entity/provider_entity.dart';
import 'package:withsqlite/domain/entity/role_entity.dart';
import 'package:withsqlite/domain/entity/user_entity.dart';

class ProductEntity {
  late int id;
  final String name;
  final UserEnum id_user;
  final ProviderEnum id_provider;
  final ProductTypeEnum id_producttype;

  ProductEntity({
    this.id = 0,
    required this.name,
    required this.id_user,
    required this.id_provider,
    required this.id_producttype,
  });
}

enum ProductEnum {
  product1(
      id: 1,
      name: 'Банана 1',
      id_user: '1',
      id_provider: '1',
      id_producttype: '1'),
  product2(
      id: 2,
      name: 'Малако 2',
      id_user: '2',
      id_provider: '2',
      id_producttype: '2');

  const ProductEnum({
    required this.id,
    required this.name,
    required this.id_user,
    required this.id_provider,
    required this.id_producttype,
  });

  final int id;
  final String name;
  final String id_user;
  final String id_provider;
  final String id_producttype;
}
