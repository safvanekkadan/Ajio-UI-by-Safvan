import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
 final List<Map<String, dynamic>> gridMap = [
    {
      "title": "PUMA Shoe",
      "subtitle" :"Low-Top-UpSneakers",
      "price": "\$255",
      "Images":
          "assets/images/wishlist1.jpg",
    },
    {
      "title": "JOCKEY T-Shirt",
      "subtitle" :"Embroidered Polo T-Shirt",
      "price": "\$245",
      "Images":
          "assets/images/wishlist2.jpg",
    },
    {
      "title": "PUMA Shoe",
      "subtitle" :"Low-Top-UpSneakers",
      "price": "\$155",
      "Images":
          "assets/images/wishlist1.jpg",
    },
    {
      "title": "JOCKEY T-Shirt",
      "subtitle" :"Embroidered Polo T-Shirt",
      "price": "\$275",
      "Images":
          "assets/images/wishlist2.jpg",
    },
    {
      "title": "JOCKEY T-Shirt",
      "subtitle" :"Embroidered Polo T-Shirt",
      "price": "\$245",
      "Images":
          "assets/images/wishlist2.jpg",
    },
    {
      "title": "PUMA Shoe",
      "subtitle" :"Low-Top-UpSneakers",
      "price": "\$155",
      "Images":
          "assets/images/wishlist1.jpg",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Wishlist",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    body :GridView.builder(
    
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 14.0,
      mainAxisExtent: 350,
    ),
    itemCount: gridMap.length,
    itemBuilder: (_, index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.0,
          ),
           //color: Color.fromARGB(255, 242, 241, 239),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              child: Image.asset(
                "${gridMap.elementAt(index)['Images']}",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${gridMap.elementAt(index)['title']}",
                    style: Theme.of(context).textTheme.titleSmall!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 79, 79, 79)
                          ),
                        ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "${gridMap.elementAt(index)['subtitle']}",
                    style: Theme.of(context).textTheme.titleSmall!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.grey
                          ),
                        ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "${gridMap.elementAt(index)['price']}",
                    style: Theme.of(context).textTheme.titleSmall!.merge(
                          TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.delete,
                        ),
                      ),
                       ElevatedButton.icon(
                                onPressed: () {
                                
                                },
                                icon: const Icon(Icons.shopping_bag_outlined),
                                label: const Text(
                                  " Add to Bag",
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                              ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
    ),
    );
  }
}
