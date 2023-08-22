import 'package:dream_sandwich/bread.dart';
import 'package:dream_sandwich/final.dart';
import 'package:flutter/material.dart';

import 'addiations.dart';

class barger extends StatefulWidget {
  const barger({Key? key}) : super(key: key);

  @override
  State<barger> createState() => _bargerState();
}

class _bargerState extends State<barger> {
  int selectedIndex = 0;
  var numbread1 = 0;
  var maney1 = 1;
  var numbread2 = 0;
  var maney2 = 1;
  var numbread3 = 0;
  var maney3 = 1;
  var numbread4 = 0;
  var maney4 = 1;
  var numbread5 = 0;
  var maney5 = 1;
  var numbread6 = 0;
  var maney6 = 1;
  var numbread7 = 0;
  var maney7 = 1;
  var numbread8 = 0;
  var maney8 = 1;
  var numbread9 = 0;
  var maney9 = 1;
  var numbread10 = 0;
  var maney10 = 1;
  var total = 2;
  var total2 = 0;
  void calc1() {
    setState(() {
      total++;
    });
  }

  void _incrementCounterbarger1() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread1++;
    });
  }

  void debarger1() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread1--;
    });
  }

  void _incrementCounterbarger2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread2++;
    });
  }

  void debarger2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread2--;
    });
  }

  void _incrementCounterbarger3() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread3++;
    });
  }

  void debarger3() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread3--;
    });
  }

  void _incrementCounterbarger4() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread4++;
    });
  }

  void debarger4() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread4--;
    });
  }

  void _incrementCounterbarger5() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread5++;
    });
  }

  void debarger5() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread5--;
    });
  }

  void _incrementCounterbarger6() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread6++;
    });
  }

  void debarger6() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread6--;
    });
  }

  void _incrementCounterbarger7() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread7++;
    });
  }

  void debarger7() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread7--;
    });
  }

  void _incrementCounterbarger8() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread8++;
    });
  }

  void debarger8() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread8--;
    });
  }

  void _incrementCounterbarger9() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread9++;
    });
  }

  void debarger9() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread9--;
    });
  }

  void _incrementCounterbarger10() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread10++;
    });
  }

  void debarger10() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread10--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),

        centerTitle: true,
        title: Text(
          " Ingredients ",
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
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
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
          SingleChildScrollView(
              child: Container(
                  child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("ff");
                    },
                    child: Container(
                        width: 180,
                        height: 200,
                        margin: EdgeInsets.only(top: 20),
                        //  margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffE1EBE5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Regular Beef ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(
                                  "images/burger-patty-Xl2VVP2-600-removebg-preview.png",
                                  fit: BoxFit.cover,
                                  width: 160,
                                  height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        _incrementCounterbarger1();
                                      },
                                      child: Text('ADD',
                                          style:
                                              TextStyle(color: Colors.black))),
                                  Text('$numbread1'),
                                  TextButton(
                                      onPressed: () {
                                        debarger1();
                                      },
                                      child: Text('Remove',
                                          style:
                                              TextStyle(color: Colors.black))),
                                ],
                              ),
                              Text(
                                '${numbread1 * 35} LE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffC86F34),
                                ),
                              ),
                            ])),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE1EBE5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Juisy Beef ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "images/ll-removebg-preview.png",
                            width: 160,
                            height: 90,
                            // fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    _incrementCounterbarger2();
                                  },
                                  child: Text('ADD',
                                      style: TextStyle(color: Colors.black))),
                              Text('$numbread2'),
                              TextButton(
                                  onPressed: () {
                                    debarger2();
                                  },
                                  child: Text('Remove',
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
                          Text(
                            '${numbread2 * 40} LE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xffC86F34),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("ff");
                    },
                    child: Container(
                        width: 180,
                        height: 200,
                        margin: EdgeInsets.only(top: 20),
                        //  margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffE1EBE5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Original Chicken ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset("images/ddd-removebg-preview.png",
                                  fit: BoxFit.cover, width: 160, height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        _incrementCounterbarger3();
                                      },
                                      child: Text('ADD',
                                          style:
                                              TextStyle(color: Colors.black))),
                                  Text('$numbread3'),
                                  TextButton(
                                      onPressed: () {
                                        debarger3();
                                      },
                                      child: Text(
                                        'Remove',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                              Text(
                                '${numbread3 * 40} LE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffC86F34),
                                ),
                              ),
                            ])),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE1EBE5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "crispy Chicken",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "images/crs-removebg-preview.png",
                            width: 160,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    _incrementCounterbarger4();
                                  },
                                  child: Text('ADD',
                                      style: TextStyle(color: Colors.black))),
                              Text('$numbread4'),
                              TextButton(
                                  onPressed: () {
                                    debarger4();
                                  },
                                  child: Text('Remove',
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
                          Text(
                            '${numbread4 * 45} LE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xffC86F34),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("ff");
                    },
                    child: Container(
                        width: 180,
                        height: 200,
                        margin: EdgeInsets.only(top: 20),
                        //  margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffE1EBE5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Melty American ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset("images/R__2_-removebg-preview.png",
                                  fit: BoxFit.cover, width: 160, height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        _incrementCounterbarger5();
                                      },
                                      child: Text('ADD',
                                          style:
                                              TextStyle(color: Colors.black))),
                                  Text('$numbread5'),
                                  TextButton(
                                      onPressed: () {
                                        debarger5();
                                      },
                                      child: Text('Remove',
                                          style:
                                              TextStyle(color: Colors.black))),
                                ],
                              ),
                              Text(
                                '${numbread5 * 6} LE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffC86F34),
                                ),
                              ),
                            ])),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE1EBE5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Mozzarella Sticks ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "images/motz-removebg-preview.png",
                            width: 160,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    _incrementCounterbarger6();
                                  },
                                  child: Text('ADD',
                                      style: TextStyle(color: Colors.black))),
                              Text('$numbread6'),
                              TextButton(
                                  onPressed: () {
                                    debarger6();
                                  },
                                  child: Text('Remove',
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
                          Text(
                            '${numbread6 * 20} LE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xffC86F34),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("ff");
                    },
                    child: Container(
                        width: 180,
                        height: 200,
                        margin: EdgeInsets.only(top: 20),
                        //  margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffE1EBE5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Tomato ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset("images/tomato-removebg-preview.png",
                                  width: 160, height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        _incrementCounterbarger7();
                                      },
                                      child: Text('ADD',
                                          style:
                                              TextStyle(color: Colors.black))),
                                  Text('$numbread7'),
                                  TextButton(
                                      onPressed: () {
                                        debarger7();
                                      },
                                      child: Text('Remove',
                                          style:
                                              TextStyle(color: Colors.black))),
                                ],
                              ),
                              Text(
                                '${numbread7 * 2.5} LE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffC86F34),
                                ),
                              ),
                            ])),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE1EBE5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Onion ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "images/ee-removebg-preview.png",
                            width: 160,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    _incrementCounterbarger8();
                                  },
                                  child: Text('ADD',
                                      style: TextStyle(color: Colors.black))),
                              Text('$numbread8'),
                              TextButton(
                                  onPressed: () {
                                    debarger8();
                                  },
                                  child: Text('Remove',
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
                          Text(
                            '${numbread8 * 2.5} LE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xffC86F34),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("ff");
                    },
                    child: Container(
                        width: 180,
                        height: 200,
                        margin: EdgeInsets.only(top: 20),
                        //  margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffE1EBE5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Lettuce",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset("images/R-removebg-preview.png",
                                  fit: BoxFit.cover, width: 160, height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        _incrementCounterbarger9();
                                      },
                                      child: Text('ADD',
                                          style:
                                              TextStyle(color: Colors.black))),
                                  Text('$numbread9'),
                                  TextButton(
                                      onPressed: () {
                                        debarger9();
                                      },
                                      child: Text('Remove',
                                          style:
                                              TextStyle(color: Colors.black))),
                                ],
                              ),
                              Text(
                                '${numbread9 * 2} LE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffC86F34),
                                ),
                              ),
                            ])),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE1EBE5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Mushrooms ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "images/ma-removebg-preview.png",
                            width: 160,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    _incrementCounterbarger10();
                                  },
                                  child: Text('ADD',
                                      style: TextStyle(color: Colors.black))),
                              Text('$numbread10'),
                              TextButton(
                                  onPressed: () {
                                    debarger10();
                                  },
                                  child: Text('Remove',
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
                          Text(
                            '${numbread10 * 7} LE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xffC86F34),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ))),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        side: BorderSide(color: Color(0xffC86F34), width: 2)),
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => bread()));
                    },
                    child: Text("Back",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
              ),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffC86F34),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => addations()));
                    },
                    child: Text("Next",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
