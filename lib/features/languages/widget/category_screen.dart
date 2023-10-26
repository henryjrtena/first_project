import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    required this.onUpdateCategory,
    super.key,
  });

  final ValueChanged<Categories> onUpdateCategory;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final category = Categories.values[index];
        return GestureDetector(
          onTap: () => onUpdateCategory(category),
          child: ListTile(
            title: Text(category.text),
          ),
        );
      },
      itemCount: Categories.values.length,
    );
  }
}
