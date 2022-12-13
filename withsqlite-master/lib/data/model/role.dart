import 'package:withsqlite/domain/entity/role_entity.dart';
import '../../domain/entity/role_entity.dart';

class Role extends RoleEntity {
  Role({
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {'role': name};
  }

  factory Role.toFromMap(Map<String, dynamic> json) {
    return Role(name: json['role']);
  }
}
