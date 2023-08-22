import 'package:dream_sandwich/addiations.dart';
import 'package:dream_sandwich/barger.dart';
import 'package:dream_sandwich/bread.dart';
import 'package:dream_sandwich/menu.dart';
import 'package:flutter/material.dart';

class creats extends StatefulWidget {
  const creats({super.key});

  @override
  State<creats> createState() => _creatsState();
}

class _creatsState extends State<creats> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),

        centerTitle: true,
        title: Text(
          " Create Sandwich ",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        backgroundColor: Color(0xffB29A82),
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(
        //   bottom: Radius.circular(15),
        // )),
        actions: [
          IconButton(
            icon: Icon(
              Icons.restaurant_menu,
            ),
            iconSize: 35,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => menu()));
            },
          ),
        ],
      ),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const bread()),
                );
              },
              child: Stack(
                children: [
                  Container(
                    //  padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Image.asset(
                          'images/assortment-baked-bread-scaled.jpg',
                          fit: BoxFit.fill,
                          height: 230,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Center(
                      child: Text(
                        'Bread',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const barger()),
                );
              },
              child: Stack(
                children: [
                  Container(
                    // padding: const EdgeInsets.only(top: 1),
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Image.asset(
                          'images/three-chile-marinade-chicken-steak.jpg',
                          fit: BoxFit.fill,
                          height: 220,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 90),
                    child: Center(
                      child: Text(
                        'Beef Or Chicken',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const addations()),
                );
              },
              child: Stack(
                children: [
                  Container(
                    // padding: const EdgeInsets.only(top: 1),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Image.asset(
                          'images/fffff.jpg',
                          fit: BoxFit.fill,
                          height: 220,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 90),
                    child: Center(
                      child: Text(
                        'Sauces',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
