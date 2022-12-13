import 'package:withsqlite/data/model/user.dart';
import 'package:withsqlite/domain/entity/role_entity.dart';

class ShopEntity {
  late int id;
  final String name;
  final String work_schedule;
  final RoleEnum id_shopaddress;
  final RoleEnum id_product;

  ShopEntity({
    this.id = 0,
    required this.name,
    required this.work_schedule,
    required this.id_shopaddress,
    required this.id_product,
  });
}
