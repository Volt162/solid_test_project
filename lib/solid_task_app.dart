import 'package:flutter/material.dart';
import 'package:solid_test_project/screens/screens.dart';

/// This widget is the root of application.
class SolidTaskApp extends StatelessWidget {
/// Const constructor.
  const SolidTaskApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Flutter Demo'),
    );
  }
}
