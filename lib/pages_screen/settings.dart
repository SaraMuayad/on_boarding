import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: AnimatedTextKit(
      animatedTexts: [
        RotateAnimatedText("Settings Screen",
            textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300)),
      ],
    )));
  }
}
