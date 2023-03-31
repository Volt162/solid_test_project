import 'package:flutter/material.dart';
import 'package:solid_test_project/commons/commons.dart';
import 'package:solid_test_project/extensions/extensions.dart';

/// Home screen of the app.
class HomeScreen extends StatefulWidget {
  /// Title of the screen.
  final String title;

  /// Const constructor.
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String textMessage = 'Hello there';
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;

  void _updateColors() {
    setState(() {
      _backgroundColor = Utils.getRandomColor();
      _textColor = _backgroundColor.invert();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: _updateColors,
        child: Container(
          color: _backgroundColor,
          alignment: Alignment.center,
          child: Text(
            textMessage,
            style: Styles.textMessage.copyWith(color: _textColor),
          ),
        ),
      ),
    );
  }
}
