import 'package:first_project/features/languages/widget/category_screen.dart';
import 'package:first_project/features/languages/widget/topic_screen.dart';
import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

class JavaLanguage extends StatefulWidget {
  const JavaLanguage({super.key});

  @override
  State<JavaLanguage> createState() => _JavaLanguageState();
}

class _JavaLanguageState extends State<JavaLanguage> {
  static const language = Languages.java;

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
