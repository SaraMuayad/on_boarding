import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: AnimatedTextKit(
      animatedTexts: [
        RotateAnimatedText("Sreach Screen",
            textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300)),
      ],
    )));
  }
}
