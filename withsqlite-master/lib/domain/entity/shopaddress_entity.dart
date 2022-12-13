class ShopAddressEntity {
  late int id;
  final String country;
  final String city;
  final String street;
  final int house;

  ShopAddressEntity({
    required this.country,
    required this.city,
    required this.street,
    required this.house,
  });
}

enum ShopAddressEnum {
  first(
      id: 1,
      country: 'Россия',
      city: 'Москва',
      street: 'Нахимовский проспект',
      house: 9),
  second(
      id: 2,
      country: 'Поле чудес',
      city: 'Тарабарск',
      street: 'им. Джузеппе',
      house: 1936);

  const ShopAddressEnum({
    required this.id,
    required this.country,
    required this.city,
    required this.street,
    required this.house,
  });

  final int id;
  final String country;
  final String city;
  final String street;
  final int house;
}
