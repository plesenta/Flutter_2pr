import 'package:withsqlite/data/model/user.dart';
import 'package:withsqlite/domain/entity/role_entity.dart';

class UserEntity {
  late int id;
  final String login;
  final String password;
  final RoleEnum idRole;

  UserEntity({
    this.id = 0,
    required this.login,
    this.password = '',
    required this.idRole,
  });
}

enum UserEnum {
  user1(
    id: 1,
    login: 'Пользователь 1',
    password: '123',
    idRole: '1',
  ),
  user2(
    id: 2,
    login: 'Пользователь 2',
    password: '456',
    idRole: '2',
  );

  const UserEnum({
    required this.id,
    required this.login,
    required this.password,
    required this.idRole,
  });

  final int id;
  final String login;
  final String password;
  final String idRole;
}
