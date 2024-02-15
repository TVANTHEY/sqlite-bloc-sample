// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductModel {
  final String id;
  final String name;

  static String tableName = "product";
  ProductModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'].toString(),
      name: map['name'].toString(),
    );
  }
}
