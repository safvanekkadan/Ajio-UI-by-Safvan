import 'package:ajio/screens/body.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ajio/screens/home_screen.dart';

class Stores extends StatefulWidget {
  Stores({super.key});

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  final List<String> storeAB = [
    "assets/images/storesA.jpeg",
    "assets/images/storesB.jpeg",
  ];
  final List<String> Stores = [
    "assets/stores2.jpeg",
    "assets/images/stores3.jpeg",
    "assets/images/stores4.jpeg",
    "assets/images/stores5.jpeg",
    "assets/images/stores6.jpeg",
    "assets/images/stores7.jpeg",
    "assets/images/stores8.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    const barr();
    return SafeArea(
      child: Scaffold(
        appBar: BuildAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/icons/stores1.jpeg",
                  width: 500,
                  height: 120,
                ),
                Container(
                    child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                  ),
                  items: Stores.map((item) => Container(
                        child: Center(
                            child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: 1200,
                          height: 300,
                        )),
                      )).toList(),
                )),
                Container(
                    child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                  ),
                  items: storeAB
                      .map((item) => Container(
                            child: Center(
                                child: Image.asset(
                              item,
                              fit: BoxFit.fill,
                              width: screenWidth,
                              height: screenHeight,
                            )),
                          ))
                      .toList(),
                )),
                Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/store1a.jpeg',
                  width: 400,
                  height: 150,
                ),
                Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/store1b.jpeg',
                  width: 400,
                  height: 700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

BuildAppBar() {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: Color.fromARGB(130, 228, 246, 255),
    centerTitle: true,
    title: const Text(
      "AJIO",
      style: TextStyle(
        color: Color.fromARGB(213, 12, 51, 90),
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.notifications_none,
          color: Color.fromARGB(213, 12, 51, 90),
          size: 28,
        ),
        onPressed: () {
          // TODO: Handle notification icon functionality
        },
      ),
    ],
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.menu_outlined,
        color: Color.fromARGB(213, 12, 51, 90),
        size: 37,
      ),
      onPressed: () {},
    ),
  );
}
