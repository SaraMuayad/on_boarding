import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:on_boarding/onbording_screen/second_splash.dart';
import 'package:on_boarding/pages_screen/home_of_pages.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({Key? key}) : super(key: key);

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
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
                        image: AssetImage("assets/first.png"),
                        fit: BoxFit.fill),
                  )),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Container(
            padding: const EdgeInsets.only(right: 120.0),
            child: const Text(
              "Set Up Devices Easily",
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
                    "Link you home devices by plugging them connet to Wi-Fi , controlling them all using a single app."),
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
                    color: Color(0xff454B69)),
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
                    color: Color(0xffD9D9D9)),
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
                                builder: (context) => const SecondSplash()));
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