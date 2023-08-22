import 'package:dream_sandwich/login.dart';
import 'package:dream_sandwich/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

bool? isLog;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    isLog = false;
  } else {
    isLog = true;
  }
  runApp(MyApp()); //wedget
}

//_______________________class materialApp_______________________________
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLog == false ? login() : menu(),
      routes: {"menu": (context) => menu()},
    );
  }
}

// ______________________class scaffold___________________________________
class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
