import 'package:first_project/features/languages/widget/category_screen.dart';
import 'package:first_project/features/languages/widget/topic_screen.dart';
import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

class DartLanguage extends StatefulWidget {
  const DartLanguage({super.key});

  @override
  State<DartLanguage> createState() => _DartLanguageState();
}

class _DartLanguageState extends State<DartLanguage> {
  static const language = Languages.dart;

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
