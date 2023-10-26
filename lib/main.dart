import 'package:first_project/features/splash.dart';
import 'package:flutter/material.dart';

void main() {
  // Changes

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    ),
  );
}
