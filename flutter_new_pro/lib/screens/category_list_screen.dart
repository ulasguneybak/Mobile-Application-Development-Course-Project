import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/category_provider.dart';
import '../widgets/category_item.dart';

class CategoryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: FutureBuilder(
        future: Provider.of<CategoryProvider>(context, listen: false).fetchCategories(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.error != null) {
            return Center(child: Text('An error occurred!'));
          } else {
            return Consumer<CategoryProvider>(
              builder: (ctx, categoryData, child) => ListView.builder(
                itemCount: categoryData.categories.length,
                itemBuilder: (ctx, index) => CategoryItem(categoryData.categories[index]),
              ),
            );
          }
        },
      ),
    );
  }
}
