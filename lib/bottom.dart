import 'package:dream_sandwich/bread.dart';
import 'package:dream_sandwich/final.dart';
import 'package:dream_sandwich/menu.dart';
import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int selectedIndex = 0;
  List<Widget> widgetpage = [menu(), bread(), finall()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffB29A82),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.black,
              ),
              label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                size: 30,
                color: Colors.black,
              ),
              label: "Creat Sandwich"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.black,
              ),
              label: "Cart"),
        ],
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
            
          });
        },
      ),
      body: widgetpage.elementAt(selectedIndex),
    );
  }
}
