// ignore_for_file: prefer_final_fields

import 'package:bloc_sample/models/product.dart';

class ProductService {
  static List<Product> products = <Product>[];

  static ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(Product(1, 'Acer Laptop', 6000));
    products.add(Product(2, 'Monster Laptop', 7500));
    products.add(Product(3, 'HP Laptop', 3500));
    return products;
  }
}
