import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bag extends StatefulWidget {
  const Bag({super.key});

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(172, 240, 250, 255),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "Bag",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/images/wishlist3.jpeg",
                height: 80,
                width: 410,
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              child: const Text(
                "Your Bag is Empty!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Text(
              "You have products in your Wishlist waiting \nto be yours",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/wishlist4.jpeg"),
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("Continue\nShopping"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(150, 50),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    elevation: 01,
                  ),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("Add from\n Wishlist"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(150, 50),
                    backgroundColor: Colors.black,
                    elevation: 10,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
