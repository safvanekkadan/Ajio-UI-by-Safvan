import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:timer_count_down/timer_count_down.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  final ScrollController _scrollController = ScrollController();

  final List<String> Imagelist = [
    "assets/images/home1.jpeg",
    "assets/images/home2.jpeg",
    "assets/images/home3.jpeg",
    "assets/images/home4.jpeg",
    "assets/images/home5.jpeg",
    "assets/images/home6.jpeg",
    "assets/images/home7.jpeg",
    "assets/images/home8.jpeg",
  ];
  final List<String> homelayer = [
    "assets/images/homelayer1.jpeg",
    "assets/images/homelayer2.jpeg",
    "assets/images/homelayer3.jpeg",
    "assets/images/homelayer4.jpeg",
    "assets/images/homelayer5.jpeg",
    "assets/images/homelayer6.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal:15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 253, 253),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.linked_camera_outlined),
                        hintText: 'Search by Product, Brand & more...',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/WhatsApp Image 2023-06-01 at 10.58.15 AM.jpeg',
                        width: 350,
                        height: 100,
                      ),
                      Image.asset(
                        'assets/images/WhatsApp Image 2023-06-01 at 10.57.22 AM.jpeg',
                        width: 350,
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Container(
                    child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                  ),
                  items: Imagelist.map((item) => Container(
                        child: Center(
                            child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width:screenWidth,
                          height: 300,
                        )),
                      )).toList(),
                ),
                ),
                Container(
                    height: 70,
                    width: 500,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 6),
                      ),
                      items: homelayer
                          .map((item) => Container(
                                child: Center(
                                    child: Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  width: screenWidth,
                                  height: 70,
                                )),
                              ))
                          .toList(),
                    )),
                Image.asset(
                  'assets/images/homelayerA.jpeg',
                  width: screenWidth,
                  height: 100,
                ),
                Image.asset(
                  'assets/images/homelayerB.jpeg',
                  width: screenWidth,
                  height: 550,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 100,
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
}

