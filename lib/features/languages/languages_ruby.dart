import 'package:first_project/features/languages/widget/category_screen.dart';
import 'package:first_project/features/languages/widget/topic_screen.dart';
import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

class RubyLanguage extends StatefulWidget {
  const RubyLanguage({super.key});

  @override
  State<RubyLanguage> createState() => _RubyLanguageState();
}

class _RubyLanguageState extends State<RubyLanguage> {
  static const language = Languages.ruby;

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
