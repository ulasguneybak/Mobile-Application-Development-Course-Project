import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/category_provider.dart';
import './screens/category_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => CategoryProvider(),
      child: MaterialApp(
        title: 'Category App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CategoryListScreen(),
      ),
    );
  }
}
