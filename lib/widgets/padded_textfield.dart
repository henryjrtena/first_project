import 'package:flutter/material.dart';

class PaddedTextField extends StatelessWidget {
  const PaddedTextField({
    required this.labelText,
    required this.hintText,
    super.key,
  });

  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}