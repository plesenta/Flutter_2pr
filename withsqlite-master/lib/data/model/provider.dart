import 'package:withsqlite/domain/entity/role_entity.dart';
import '../../domain/entity/cart_entity.dart';
import '../../domain/entity/product_entity.dart';
import '../../domain/entity/provider_entity.dart';
import '../../domain/entity/provideraddress_entity.dart';
import '../../domain/entity/role_entity.dart';

class Provider extends ProviderEntity {
  Provider({
    super.id = 0,
    required super.name,
    required super.id_provideraddress,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'id_provideraddress': id_provideraddress,
    };
  }

  factory Provider.toFromMap(Map<String, dynamic> json) {
    return Provider(
      id: (json['id'] as int),
      name: json['name'],
      id_provideraddress: ProviderAddressEnum.values.firstWhere(
        (element) => element.id == (json['id_provideraddress'] as int),
      ),
    );
  }
}
