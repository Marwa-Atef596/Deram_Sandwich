import 'package:dream_sandwich/login.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(
                "images/11.png",
                fit: BoxFit.cover,
                width: 250,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Color(0xffC86F34),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "to",
                    style: TextStyle(
                        color: Color(0xffC86F34),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Dream Sandwich",
                    style: TextStyle(
                        color: Color(0xffC86F34),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff542F23), width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                icon: Icon(Icons.arrow_forward_ios),
                color: Color(0xffC86F34),
                highlightColor: Color(0xffC86F34),
                iconSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
