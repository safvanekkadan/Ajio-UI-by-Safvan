import 'package:ajio/screens/orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(130, 228, 246, 255),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "My Account",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150.0,
                  color: const Color.fromARGB(130, 228, 246, 255),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundColor: Colors.black,
                              child: Text(
                                "SA",
                                style: TextStyle(
                                  fontSize: 33.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          /////////////////
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Safvan",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "msafvanek@gamil.com",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "7902913306",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap:
                      () => // Navigating to a new screen and replacing the current screen
                          Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>Orders())),
                  child: Container(
                    width: double.infinity,
                    height: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Orders",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 300),
                        Icon(Icons.arrow_forward_ios_rounded, size: 20)
                      ],
                    ),
                  ),
                ),
                
                ListtileWidget(),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Coupen Quest",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 240),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Game Zone",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 260),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "AJIO Wallet",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 255),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Saved Cards",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 250),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Address",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 280),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Notification",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 250),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Retun Creation Demo",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 180),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "How to Return",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 240),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "How Do I Redeem My Coupon",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 110),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 190),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Promotions Terms & Conditions",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Returns & Refunds Policy",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 160),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "We Respect Your Privacy",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 160),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Fees & Payments",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Who We Are",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 250),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Join Our Team",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 240),
                      Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Log out',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 400,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      "Version 9.0.1 Build 2037",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListtileWidget extends StatelessWidget {
  const ListtileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Invate Friends & Earn",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(width: 180),
          Icon(Icons.arrow_forward_ios_rounded, size: 20),
        ],
      ),
    );
  }
}

class listTiles extends StatelessWidget {
  const listTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Customer Care",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(width: 230),
          Icon(Icons.arrow_forward_ios_rounded, size: 20)
        ],
      ),
    );
  }
}
