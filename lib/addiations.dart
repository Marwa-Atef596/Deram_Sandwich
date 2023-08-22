import 'package:dream_sandwich/barger.dart';
import 'package:dream_sandwich/final.dart';
import 'package:flutter/material.dart';


class addations extends StatefulWidget {
  const addations({Key? key}) : super(key: key);

  @override
  State<addations> createState() => _addationsState();
}

class _addationsState extends State<addations> {
  int selectedIndex = 0;
  var numbread1 = 0;
  var maney1 = 1;
  var numbread2 = 0;
  var maney2 = 1;
  var numbread3 = 0;
  var maney3 = 1;
  var numbread4 = 0;
  var maney4 = 1;
  var total = 2;
  var total2 = 0;
  void calc1() {
    setState(() {
      total++;
    });
  }

  void _incrementCounteraddations1() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread1++;
    });
  }

  void deaddations1() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread1--;
    });
  }

  void _incrementCounteraddations2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread2++;
    });
  }

  void deaddations2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread2--;
    });
  }

  void _incrementCounteraddations3() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread3++;
    });
  }

  void deaddations3() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread3--;
    });
  }

  void _incrementCounteraddations4() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread4++;
    });
  }

  void deaddations4() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      numbread4--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),

        centerTitle: true,
        title: Text(
          "Sauces ",
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
                                "Katchup ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(
                                  "images/ketchup-sauce-cup-VayzrBD-600-removebg-preview.png",
                                  fit: BoxFit.cover,
                                  width: 160,
                                  height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        _incrementCounteraddations1();
                                      },
                                      child: Text('ADD',
                                          style:
                                              TextStyle(color: Colors.black))),
                                  Text('$numbread1'),
                                  TextButton(
                                      onPressed: () {
                                        deaddations1();
                                      },
                                      child: Text('Remove',
                                          style:
                                              TextStyle(color: Colors.black))),
                                ],
                              ),
                              Text(
                                '${numbread1 * 3} LE',
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
                            "Sweet Chili ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "images/Sweet-Chili.png",
                            width: 160,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    _incrementCounteraddations2();
                                  },
                                  child: Text('ADD',
                                      style: TextStyle(color: Colors.black))),
                              Text('$numbread2'),
                              TextButton(
                                  onPressed: () {
                                    deaddations2();
                                  },
                                  child: Text('Remove',
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
                          Text(
                            '${numbread2 * 6} LE',
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
                                "Tomia ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset("images/814009-removebg-preview.png",
                                  fit: BoxFit.cover, width: 160, height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        _incrementCounteraddations3();
                                      },
                                      child: Text('ADD',
                                          style:
                                              TextStyle(color: Colors.black))),
                                  Text('$numbread3'),
                                  TextButton(
                                      onPressed: () {
                                        deaddations3();
                                      },
                                      child: Text(
                                        'Remove',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                              Text(
                                '${numbread3 * 5} LE',
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
                            "Ranch",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "images/rr-removebg-preview.png",
                            width: 160,
                            height: 100,
                            // fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    _incrementCounteraddations4();
                                  },
                                  child: Text('ADD',
                                      style: TextStyle(color: Colors.black))),
                              Text('$numbread4'),
                              TextButton(
                                  onPressed: () {
                                    deaddations4();
                                  },
                                  child: Text('Remove',
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
                          Text(
                            '${numbread4 * 8} LE',
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [],
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
                          MaterialPageRoute(builder: (context) => barger()));
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
                          MaterialPageRoute(builder: (context) => finall()));
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
