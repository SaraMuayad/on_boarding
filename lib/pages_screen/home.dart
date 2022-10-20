import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: AnimatedTextKit(
      animatedTexts: [
        RotateAnimatedText("Home Screen",
            textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300)),
      ],
    )));
  }
}
