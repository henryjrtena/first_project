import 'package:first_project/features/languages/widget/category_screen.dart';
import 'package:first_project/features/languages/widget/topic_screen.dart';
import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

class CPlusPlusLanguage extends StatefulWidget {
  const CPlusPlusLanguage({super.key});

  @override
  State<CPlusPlusLanguage> createState() => _CPlusPlusLanguageState();
}

class _CPlusPlusLanguageState extends State<CPlusPlusLanguage> {
  static const language = Languages.cplusplus;

  Categories? selectedCategory;

  void _onUpdateCategory(Categories category) {
    setState(() {
      selectedCategory = category;
    });
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TopicScreen(
        language: language,
        category: selectedCategory!,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return CategoryScreen(onUpdateCategory: _onUpdateCategory);
  }
}
