import 'package:withsqlite/domain/entity/role_entity.dart';
import '../../domain/entity/cart_entity.dart';
import '../../domain/entity/product_entity.dart';
import '../../domain/entity/provideraddress_entity.dart';
import '../../domain/entity/role_entity.dart';
import '../../domain/entity/shop_entity.dart';
import '../../domain/entity/shopaddress_entity.dart';

class ShopAddress extends ShopAddressEntity {
  ShopAddress({
    required super.country,
    required super.city,
    required super.street,
    required super.house,
  });

  Map<String, dynamic> toMap() {
    return {'country': country, 'city': city, 'street': street, 'house': house};
  }

  factory ShopAddress.toFromMap(Map<String, dynamic> json) {
    return ShopAddress(
        country: json['country'],
        city: json['city'],
        street: json['street'],
        house: json['house']);
  }
}
