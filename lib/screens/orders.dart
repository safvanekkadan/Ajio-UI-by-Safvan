import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 210, 228, 237),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Orders",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Column(children: [
            Container(
              height: 180,
              width: double.infinity,
              color: const Color.fromARGB(255, 241, 217, 144),
              child: Row(
                children: [
                  const Icon(Icons.warning, color: Colors.black),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 1, 10),
                      child: Text(
                        "Hey! Please note that AJIO or its employees will never "
                        " ask you to disclose any financial information or that payment"
                        "regarding any contest that yiu have won."
                        "Do not share such sensitive through any"
                        "medium.Stay Secure and stay fabulous!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 110, left:10),
                        child: Text(
                          " Read Less",
                          style: TextStyle(
                              color: Color.fromARGB(255, 54, 87, 145),
                              fontSize: 19,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Last 6 months",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180, right: 10),
                    child: Text(
                      "Change",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Order ID : FN2761403314",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ]),
          Container(
            width: 370,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              
              children: [
                Image.asset(
                  'assets/images/orders1.jpg',
                  height: 100,
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  
                  ),
                  padding:const EdgeInsets.fromLTRB(120,25,30,20),
                  child:const  Text(
                    'Cancelled ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  
                ),
                 const Padding(
                  padding:  EdgeInsets.fromLTRB(120,49,30,20),
                  child: Text("Cancelled on Tue, 10 Jun",
                  style: TextStyle(color: Colors.black),),
                ),
                 const Padding(
                  padding: EdgeInsets.fromLTRB(120,66.5,30,20),
                  child: Text("Cash on Delivery",
                          style: TextStyle(color: Colors.grey),),
                ),
                const  Padding(
                   padding: EdgeInsets.fromLTRB(320,49,30,20),
                   child: Icon(Icons.arrow_forward_ios_rounded, size: 20,),
                 )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
