import 'package:withsqlite/domain/entity/role_entity.dart';
import '../../domain/entity/cart_entity.dart';
import '../../domain/entity/product_entity.dart';
import '../../domain/entity/provideraddress_entity.dart';
import '../../domain/entity/role_entity.dart';
import '../../domain/entity/shop_entity.dart';

class Shop extends ShopEntity {
  Shop({
    required super.name,
    required super.work_schedule,
    required super.id_shopaddress,
    required super.id_product,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'work_schedule': work_schedule,
      'id_shopaddress': id_shopaddress,
      'id_product': id_product
    };
  }

  factory Shop.toFromMap(Map<String, dynamic> json) {
    return Shop(
        name: json['name'],
        work_schedule: json['work_schedule'],
        id_shopaddress: json['id_shopaddress'],
        id_product: json['id_product']);
  }
}
