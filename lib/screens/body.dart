import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
     
    return   Scaffold(
      body: barr(),
    );
  }
}

class barr extends StatelessWidget {
  const barr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color:  Color.fromARGB(130, 181, 229, 255),
      child: Padding(
        padding: const EdgeInsets.all( 15.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
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
          child:Padding(
            padding: const EdgeInsets.all(1.0),
            child: const  TextField(
              decoration: InputDecoration(
                suffixIcon:Icon(Icons.linked_camera_outlined),
                hintText: 'Search by Product, Brand & more...',
                border: InputBorder.none,
                 
                icon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
    );
  }
}