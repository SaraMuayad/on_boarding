import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:on_boarding/onbording_screen/first_splash.dart';

import '../pages_screen/home_of_pages.dart';

class ThirdSplash extends StatefulWidget {
  const ThirdSplash({Key? key}) : super(key: key);

  @override
  State<ThirdSplash> createState() => _ThirdSplashState();
}

class _ThirdSplashState extends State<ThirdSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePages()));
              },
              child: Container(
                padding: const EdgeInsets.only(right: 23.0),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Color(0xff454B69)),
                  ),
                ),
              )),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 368,
                  height: 276,
                  margin: const EdgeInsets.only(
                    left: 1.0,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/third.png"),
                        fit: BoxFit.fill),
                  )),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Container(
            padding: const EdgeInsets.only(right: 235.0),
            child: const Text(
              "Automate",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 330.0,
                child: Text(
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                    "switch through different sences and quick action for fast management of your home."),
              )
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 35.0,
              ),
              Container(
                width: 35,
                height: 11,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xffD9D9D9)),
              ),
              SizedBox(
                width: 7.0,
              ),
              Container(
                width: 35,
                height: 11,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xffD9D9D9)),
              ),
              SizedBox(
                width: 7.0,
              ),
              Container(
                width: 35,
                height: 11,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xff454B69)),
              ),
              SizedBox(
                width: 160.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Color(0xffF9A826)),
                    child: TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePages()));
                      }),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
