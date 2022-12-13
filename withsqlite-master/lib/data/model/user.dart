import 'package:withsqlite/domain/entity/user_entity.dart';

import '../../domain/entity/role_entity.dart';

class User extends UserEntity {
  final String password;

  User({
    super.id = 0,
    required super.login,
    required this.password,
    required super.idRole,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'login': login,
      'password': password,
      'id_role': idRole.id,
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      id: (json['id'] as int),
      login: json['login'],
      password: json['password'],
      idRole: RoleEnum.values.firstWhere(
        (element) => element.id == (json['id_role'] as int),
      ),
    );
  }
}
