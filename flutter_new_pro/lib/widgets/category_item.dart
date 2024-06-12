import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/category_detail_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category.name),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryDetailScreen(category),
          ),
        );
      },
    );
  }
}
