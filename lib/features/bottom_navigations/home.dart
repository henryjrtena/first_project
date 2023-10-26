
import 'package:first_project/features/LANGUAGES/languages_arduino.dart';
import 'package:first_project/features/LANGUAGES/languages_c.dart';
import 'package:first_project/features/LANGUAGES/languages_cplusplus.dart';
import 'package:first_project/features/LANGUAGES/languages_dart.dart';
import 'package:first_project/features/LANGUAGES/languages_java.dart';
import 'package:first_project/features/LANGUAGES/languages_ruby.dart';
import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

class AllLanguage extends StatefulWidget {
  const AllLanguage({super.key});

  @override
  State<AllLanguage> createState() => _AllLanguageState();
}

class _AllLanguageState extends State<AllLanguage> {
  static final _viewLanguageScreen = [
    const ArduinoLanguage(),
    const CLanguage(),
    const CPlusPlusLanguage(),
    const DartLanguage(),
    const JavaLanguage(),
    const RubyLanguage(),
  ];

  int? selectedScreen;

  void _onViewScreen(int index) {
    setState(() {
      selectedScreen = selectedScreen != index ? index : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(10.0),
            separatorBuilder: (_, __) => const SizedBox(width: 10.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: index != selectedScreen ? Colors.deepPurple[300] : Colors.deepPurple,
              ),
              onPressed: () => _onViewScreen(index),
              child: Text(Languages.values[index].value),
            ),
            itemCount: Languages.values.length,
          ),
        ),
        Expanded(
          flex: 10,
          child: selectedScreen == null
              ? Container(
                  color: Colors.deepPurple[100],
                  child: const Center(
                    child: Text('Please choose a language!'),
                  ),
                )
              : _viewLanguageScreen[selectedScreen!],
        )
      ],
    );
  }
}
