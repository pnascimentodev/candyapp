import 'package:candyapp/pages/tab/donut.dart';
import 'package:candyapp/pages/tab/drink.dart';
import 'package:candyapp/pages/tab/ice_cream.dart';
import 'package:candyapp/pages/tab/ice_lolly.dart';
import 'package:candyapp/util/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    // icecream tab
    MyTab(
      iconPath: 'assets/icons/icecream.png',
    ),
    // icelolly tab
    MyTab(
      iconPath: 'assets/icons/icelolly.png',
    ),
    // donuts tab
    MyTab(
      iconPath: 'assets/icons/donuts.png',
    ),
    //drinks tab
    MyTab(
      iconPath: 'assets/icons/drink.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.pinkAccent,
                  size: 36,
                ),
                onPressed: () {
                  //drawer
                },
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.pinkAccent,
                    size: 36,
                  ),
                  onPressed: () {
                    // account
                  },
                ),
              )
            ],
          ),
          body: Column(children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 9),
              child: Row(
                children: [
                  Text(
                    'Candy Dream',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dancing',
                    ),
                  ),
                ],
              ),
            ),
            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(children: [
                IceCreamTab(),
                LollyTab(),
                DonutTab(),
                DrinkTab(),
              ]),
            ),
          ]),
        ));
  }
}
