import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:on_boarding/pages_screen/faiverot.dart';
import 'package:on_boarding/pages_screen/search.dart';
import 'package:on_boarding/pages_screen/settings.dart';

import 'home.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _index = 0;
  final screen = [Home(), Faiverot(), Search(), Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_index],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Color(0xffF9A826),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(60, 60),
                  topRight: Radius.elliptical(60, 60))),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: GNav(
              selectedIndex: _index,
              onTabChange: (value) {
                setState(() {
                  this._index = value;
                });
              },
              backgroundColor: Color(0xffF9A826),
              color: Color(0xffffffff),
              activeColor: Color(0xffF9A826),
              tabBackgroundColor: Color(0xffffffff),
              gap: 10,
              padding: EdgeInsets.all(15),
              tabs: [
                GButton(
                  textColor: Colors.black54,
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Faiverot',
                  textColor: Colors.black54,
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Sreach',
                  textColor: Colors.black54,
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                  textColor: Colors.black54,
                )
              ],
            ),
          ),
        ));
  }
}
