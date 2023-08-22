import 'package:dream_sandwich/chicken.dart';
import 'package:dream_sandwich/Creats.dart';
import 'package:dream_sandwich/bread.dart';
import 'package:dream_sandwich/extra.dart';
import 'package:dream_sandwich/final.dart';
import 'package:dream_sandwich/meat.dart';
import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int selectedIndex = 0;
  List<Widget> widgetpage = [menu(), bread(), finall()];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // bottom b = bottom();
    // setState(() {
    //  b= bottom();
    // });

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(
              Icons.restaurant_menu,
              color: Colors.black,
            ),
            iconSize: 35,
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Text(
          "Menu",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Color(0xffB29A82),
      ),
      drawerScrimColor: Color(0xffB29A82).withOpacity(0.5),
      drawer: MultiLevelDrawer(
        backgroundColor: Colors.white,
        rippleColor: Colors.white,
        subMenuBackgroundColor: Colors.grey.shade100,
        header: Container(
          // Header for Drawer
          height: size.height * 0.25,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/2-removebg-preview.png",
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text("name")
            ],
          )),
        ),
        children: [
          // Child Elements for Each Drawer Item
          MLMenuItem(
              leading: Icon(Icons.person),
              //trailing: Icon(Icons.arrow_right),
              content: Text(
                "My Profile",
              ),
              // subMenuItems: [
              //   MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
              //   MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
              //   MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
              //],
              onClick: () {}),
          MLMenuItem(
              leading: Icon(Icons.restaurant_menu),
              trailing: Icon(Icons.arrow_right),
              content: Text("Menu"),
              onClick: () {},
              subMenuItems: [
                MLSubmenu(
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => chicken()));
                    },
                    submenuContent: Text("Chicken")),
                MLSubmenu(
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => meat()));
                    },
                    submenuContent: Text("Meat")),
                MLSubmenu(
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => extra()));
                    },
                    submenuContent: Text("Extra")),
                MLSubmenu(
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => creats()));
                    },
                    submenuContent: Text("Create Sandwich"))
              ]),

          MLMenuItem(
              leading: Icon(Icons.shopping_cart),
              // trailing: Icon(Icons.arrow_right),
              content: Text(
                "Cart",
              ),
              // subMenuItems: [
              //   MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
              //   MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
              //   MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
              //   MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
              // ],
              onClick: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => finall()));
              }),
          MLMenuItem(
            leading: Icon(Icons.logout),
            content: Text("Log Out"),
            onClick: () {},
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
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => chicken()));
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Image.asset("images/burger-king-fast-food.gif"),
                    Container(
                      margin: EdgeInsets.only(top: 9, left: 10, right: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            colors: [Color(0xfffFFFFF), Color(0xffB29A82)]),
                        color: Color(0xffB29A82),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/333.png",
                            fit: BoxFit.fill,
                            width: 100,
                            height: 100,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                "chicken's",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => meat()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 9, left: 10, right: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              colors: [Color(0xfffFFFFF), Color(0xffB29A82)]),
                          color: Color(0xffB29A82),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/Burger-King-Triple-Whopper-Transparent-PNG-1.png",
                              fit: BoxFit.fill,
                              width: 100,
                              height: 100,
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 30),
                                child: Text(
                                  "Meat's",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => extra()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 9, left: 10, right: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              colors: [Color(0xfffFFFFF), Color(0xffB29A82)]),
                          color: Color(0xffB29A82),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/77-removebg-preview.png",
                              fit: BoxFit.fill,
                              width: 100,
                              height: 100,
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 30),
                                child: Text(
                                  "Extra's",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => creats()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 9, left: 10, right: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              colors: [Color(0xfffFFFFF), Color(0xffB29A82)]),
                          color: Color(0xffB29A82),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/9.png",
                              fit: BoxFit.fill,
                              width: 100,
                              height: 100,
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Create Sandwich",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
