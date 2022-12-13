class ProductTypeEntity {
  late int id;
  final String name;

  ProductTypeEntity({
    required this.name,
  });
}

enum ProductTypeEnum {
  admin(id: 1, name: 'Напитки'),
  cassir(id: 2, name: 'Кушалки');

  const ProductTypeEnum({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}
