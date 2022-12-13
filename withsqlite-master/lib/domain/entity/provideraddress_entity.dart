class ProviderAddressEntity {
  late int id;
  final String name;
  final String country;
  final String city;
  final String street;
  final int house;

  ProviderAddressEntity({
    required this.name,
    required this.country,
    required this.city,
    required this.street,
    required this.house,
  });
}

enum ProviderAddressEnum {
  first(
    id: 1,
    name: 'Хи-хи-хинский сказки',
    country: 'Россия',
    city: 'Москва',
    street: 'Нахимовский проспект',
    house: 111,
  ),
  second(
    id: 2,
    name: 'Ха-ха-хинские басни',
    country: 'Поле чудес',
    city: 'Тарабарск',
    street: 'им. Джузеппе',
    house: 222,
  );

  const ProviderAddressEnum({
    required this.id,
    required this.name,
    required this.country,
    required this.city,
    required this.street,
    required this.house,
  });

  final int id;
  final String name;
  final String country;
  final String city;
  final String street;
  final int house;
}
