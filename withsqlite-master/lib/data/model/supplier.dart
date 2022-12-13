import 'package:withsqlite/domain/entity/supplier_entity.dart';

class Supplier extends SupplierEntity {
Supplier(super.id, super.company_name, super.surname, super.name, super.adress, super.telephon);

Map<String, dynamic> toMap() {
return {
'id': id,
'company_name': company_name,
'surname': surname,
'name': name,
'adress': adress,
'telephon': telephon,
};
}

factory Supplier.fromMap(Map<String, dynamic> map) {
return Supplier(
map['id'],
map['company_name'],
map['surname'],
map['name'],
map['adress'],
map['telephon'],
);
}
}