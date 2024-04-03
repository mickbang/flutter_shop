import 'package:flutter/material.dart';
import '../config/index.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<StatefulWidget> createState() => CategoryState();
}

class CategoryState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(QString.categoryTitle),
    );
  }
}
