import 'package:first_project/features/languages/widget/category_screen.dart';
import 'package:first_project/features/languages/widget/topic_screen.dart';
import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

class CLanguage extends StatefulWidget {
  const CLanguage({super.key});

  @override
  State<CLanguage> createState() => _CLanguageState();
}

class _CLanguageState extends State<CLanguage> {
  static const language = Languages.c;

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
