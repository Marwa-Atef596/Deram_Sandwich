import 'package:flutter/material.dart';

class finall extends StatefulWidget {
  const finall({super.key});

  @override
  State<finall> createState() => _finallState();
}

class _finallState extends State<finall> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),

        centerTitle: true,
        title: Text(
          " Cart ",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Color(0xffB29A82),
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(
        //   bottom: Radius.circular(15),
        // )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            iconSize: 35,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => finall()));
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
      /*  bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffB29A82),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                size: 30,
                color: Colors.black,
              ),
              label: "Fav"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: Colors.black,
              ),
              label: "Profile"),
        ],
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ), */
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "images/photo2.gif",
                fit: BoxFit.fill,
              ),
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
