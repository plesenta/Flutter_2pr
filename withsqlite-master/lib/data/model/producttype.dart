import 'package:withsqlite/domain/entity/role_entity.dart';
import '../../domain/entity/cart_entity.dart';
import '../../domain/entity/product_entity.dart';
import '../../domain/entity/producttype_entity.dart';
import '../../domain/entity/role_entity.dart';

class ProductType extends ProductTypeEntity {
  ProductType({required super.name});

  Map<String, dynamic> toMap() {
    return {'name': name};
  }

  factory ProductType.toFromMap(Map<String, dynamic> json) {
    return ProductType(
      name: json['name'],
    );
  }
}
