import 'package:flutter/material.dart';

class ProductModel {
  bool isFavorite;
  String imageName;
  String title;
  double price;
  String description;
  ProductModel({
    required this.isFavorite,
    required this.imageName,
    required this.title,
    required this.price,
    required this.description,
  });
}
