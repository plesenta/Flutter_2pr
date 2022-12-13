abstract class DataBaseRequest {
  static const String tableRole = 'role';
  static const String tableUser = 'user';
  static const String tableShop = 'shop';
  static const String tableShopAddress = 'shopaddress';
  static const String tableProduct = 'product';
  static const String tableProductType = 'type';
  static const String tableSupplier = 'supplier';
  static const String tableProvider = 'provider';
  static const String tableProviderAddress = 'provideraddress';

  static const List<String> tableList = [
    tableRole,
    tableUser,
    tableShop,
    tableShopAddress,
    tableProduct,
    tableProductType,
    tableProvider,
    tableProviderAddress,
    tableSupplier
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUser,
    _createTableShop,
    _createTableShopAddress,
    _createTableProduct,
    _createTableProductType,
    _createTableProvider,
    _createTableProviderAddress,
    _createTableSupplier
  ];

  static String deleteTable(String table) => 'DROP TABLE $table';

  static const String _createTableRole = '''CREATE TABLE "$tableRole"
      ("id" INTEGER,
      "role" TEXT NOT NULL UNIQUE,
      PRIMARY KEY("id" AUTOINCREMENT))''';

  static const String _createTableUser = '''CREATE TABLE "$tableUser" (
        "id"	INTEGER,
        "login"	TEXT NOT NULL UNIQUE,
        "password"	TEXT NOT NULL,
        "name" TEXT NOT NULL,
        "surname" TEXT NOT NULL,
        "middleName" TEXT, 
        "id_role"	INTEGER,
        FOREIGN KEY("id_role") REFERENCES "role"("id") ON DELETE CASCADE,
        PRIMARY KEY("id" AUTOINCREMENT) )''';

  static const String _createTableSupplier = '''CREATE TABLE "$tableSupplier" (
      "id" INTEGER,
      "company_name" TEXT NOT NULL UNIQUE,
      "surname" TEXT NOT NULL,
      "name" TEXT NOT NULL,
      "adress" TEXT NOT NULL,
      "telephon" TEXT NOT NULL CHECK (length(telephon) = 11),
      PRIMARY KEY("id" AUTOINCREMENT))''';


  static const String _createTableShopAddress =
      '''CREATE TABLE "$tableShopAddress" (
        "id"	INTEGER, 
        "country" TEXT NOT NULL,
        "city" TEXT NOT NULL,
        "street" TEXT NOT NULL,
        "house" TEXT NOT NULL,
        PRIMARY KEY("id" AUTOINCREMENT) )''';

  static const String _createTableProviderAddress =
      '''CREATE TABLE "$tableProviderAddress" (
        "id"	INTEGER,
        "name" TEXT NOT NULL,
        "country" TEXT NOT NULL,
        "city" TEXT NOT NULL,
        "street" TEXT NOT NULL,
        "house" INTEGER,  
        PRIMARY KEY("id" AUTOINCREMENT) )''';

  static const String _createTableProductType =
      '''CREATE TABLE "$tableProductType" (
        "id"	INTEGER,
        "name" TEXT NOT NULL,
        PRIMARY KEY("id" AUTOINCREMENT) )''';

  static const String _createTableShop = '''
        CREATE TABLE "$tableShop" (
        "id"	INTEGER,
        "name"	TEXT NOT NULL UNIQUE,
        "work_schedule" TEXT NOT NULL,
        "id_shopaddress"	INTEGER,
        "id_product"	INTEGER,
  		  FOREIGN KEY("id_shopaddress") REFERENCES "shopaddress"("id") ON DELETE CASCADE,	
        FOREIGN KEY("id_product") REFERENCES "product"("id") ON DELETE CASCADE,
        PRIMARY KEY("id" AUTOINCREMENT) )''';

  static const String _createTableProduct = '''
        CREATE TABLE "$tableProduct" (
        "id"	INTEGER, 
        "name"	TEXT NOT NULL,
        "id_user"	INTEGER,
        "id_provider"	INTEGER,
        "id_producttype"	INTEGER,
  		  FOREIGN KEY("id_user") REFERENCES "user"("id") ON DELETE CASCADE,
  		  FOREIGN KEY("id_provider") REFERENCES "provider"("id") ON DELETE CASCADE,
  		  FOREIGN KEY("id_producttype") REFERENCES "producttype"("id") ON DELETE CASCADE,
        PRIMARY KEY("id" AUTOINCREMENT) )''';

  static const String _createTableProvider = '''
        CREATE TABLE "$tableProvider" (
        "id"	INTEGER, 
        "name"	TEXT NOT NULL,
        "id_provideraddress"	INTEGER,
        FOREIGN KEY("id_provideraddress") REFERENCES "provideraddress"("id") ON DELETE CASCADE,
        PRIMARY KEY("id" AUTOINCREMENT) )''';

}
