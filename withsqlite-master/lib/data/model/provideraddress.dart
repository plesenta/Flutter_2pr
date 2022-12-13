import 'package:withsqlite/domain/entity/role_entity.dart';
import '../../domain/entity/cart_entity.dart';
import '../../domain/entity/product_entity.dart';
import '../../domain/entity/provideraddress_entity.dart';
import '../../domain/entity/role_entity.dart';

class ProviderAddress extends ProviderAddressEntity {
  ProviderAddress({
    required super.name,
    required super.country,
    required super.city,
    required super.street,
    required super.house,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'country': country,
      'city': city,
      'street': street,
      'house': house
    };
  }

  factory ProviderAddress.toFromMap(Map<String, dynamic> json) {
    return ProviderAddress(
      name: json['name'],
      country: json['country'],
      city: json['city'],
      street: json['street'],
      house: json['house'],
    );
  }
}
