import 'package:ajio/screens/account.dart';
import 'package:ajio/screens/bag.dart';
import 'package:ajio/screens/home_screen.dart';
import 'package:ajio/screens/stores.dart';
import 'package:ajio/screens/wishlist.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

class Bottoms extends StatefulWidget {
        @override
        _BottomsState createState() => _BottomsState();
        }

        class _BottomsState extends State<Bottoms> {
        int _selectedIndex = 0; //default index

        final List<Widget>  _widgetOptions = [
          HomeScreen(),
          Stores(),
           Account(),
           Wishlist(),
            Bag()
           
        ];
        @override
        Widget build(BuildContext context) {
            return Scaffold(
            
            body: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: CustomLineIndicatorBottomNavbar(
                selectedColor: Color.fromARGB(255, 17, 17, 17),
                
                unSelectedColor: Color.fromARGB(136, 0, 0, 0),
                backgroundColor: Colors.white,
                currentIndex: _selectedIndex,
                onTap: (index) {
                setState(() {
                    _selectedIndex = index;
                });
                },
                enableLineIndicator: true,
                lineIndicatorWidth: 4,
                indicatorType: IndicatorType.Bottom,
                splashColor: Color.fromARGB(255, 231, 194, 86),
                

                customBottomBarItems: [
                  
                CustomBottomBarItems(
                    label: 'Home',
                    icon: Icons.home,
                    
                ),
                CustomBottomBarItems(
                    label: 'Stores',
                    icon: Icons.storefront_outlined,
                    
                ),
                CustomBottomBarItems(
                    label: 'Account', icon: Icons.person_2,
                    ),
                CustomBottomBarItems(
                    label: 'Wishlist',
                    icon: Icons.favorite_border,
                ),
                CustomBottomBarItems(
                    label: 'bag',
                    icon: Icons.shopping_bag_outlined,
                ),
                ],
            ),
            );
        }
        }