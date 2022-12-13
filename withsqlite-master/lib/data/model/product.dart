import 'package:withsqlite/domain/entity/role_entity.dart';
import '../../domain/entity/cart_entity.dart';
import '../../domain/entity/product_entity.dart';
import '../../domain/entity/producttype_entity.dart';
import '../../domain/entity/provider_entity.dart';
import '../../domain/entity/role_entity.dart';
import '../../domain/entity/user_entity.dart';

class Product extends ProductEntity {
  Product(
      {super.id = 0,
      required super.name,
      required super.id_user,
      required super.id_provider,
      required super.id_producttype});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id_user': id_user,
      'id_provider': id_provider,
      'id_producttype': id_producttype
    };
  }

  factory Product.toFromMap(Map<String, dynamic> json) {
    return Product(
      id: (json['id'] as int),
      name: json['name'],
      id_user: UserEnum.values.firstWhere(
        (element) => element.id == (json['id_user'] as int),
      ),
      id_provider: ProviderEnum.values.firstWhere(
        (element) => element.id == (json['id_provider'] as int),
      ),
      id_producttype: ProductTypeEnum.values.firstWhere(
        (element) => element.id == (json['id_producttype'] as int),
      ),
    );
  }
}
