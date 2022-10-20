import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Faiverot extends StatefulWidget {
  const Faiverot({Key? key}) : super(key: key);

  @override
  State<Faiverot> createState() => _FaiverotState();
}

class _FaiverotState extends State<Faiverot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText("Faiverot Screen",
              textStyle:
                  TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300)),
        ],
      )),
    );
  }
}
