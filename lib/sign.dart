//import 'package:flutter/src/rendering/box.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dream_sandwich/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class sign extends StatefulWidget {
  const sign({super.key});

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  signup() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: pass,
        );
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("not valid");
    }
  }

  var email, pass, phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset("images/burger-king-whopper-melt.jpg"),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        ;
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 30,
                      color: Color(0xffC86F34),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Form(
                  key: formstate,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Color(0xffC86F34),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length > 100) {
                            return "can't more than 100";
                          }
                          if (value.length < 5) {
                            return "can't less than 5";
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          email = newValue!;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffC86F34)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            hintText: "Email",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length > 8) {
                            return "can't more than 8";
                          }
                          if (value.length < 3) {
                            return "can't less than 3";
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          pass = newValue!;
                        },
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffC86F34)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                )),
                            hintText: "password",
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffC86F34)))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // TextFormField(
                      //   validator: (value) {
                      //     if (value!.length > 11) {
                      //       return "can't more than 11";
                      //     }
                      //     if (value!.length < 9) {
                      //       return "can't less than 9";
                      //     }
                      //     return null;
                      //   },
                      //   onSaved: (newValue) {
                      //     phone = newValue!;
                      //   },
                      //   keyboardType: TextInputType.phone,
                      //   decoration: InputDecoration(
                      //       enabledBorder: OutlineInputBorder(
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(15))),
                      //       focusedBorder: OutlineInputBorder(
                      //           borderSide:
                      //               BorderSide(color: Color(0xffC86F34)),
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(15))),
                      //       prefixIcon: Icon(
                      //         Icons.phone_android,
                      //         color: Colors.grey,
                      //       ),
                      //       hintText: "phone",
                      //       border: OutlineInputBorder(
                      //           borderSide:
                      //               BorderSide(color: Color(0xffC86F34)))),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffC86F34),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () async {
                              // AwesomeDialog(
                              //   btnOkText: "Login",
                              //   context: context,
                              //   dialogType: DialogType.success,
                              //   animType: AnimType.rightSlide,
                              //   title: 'Thank You',
                              //   desc: 'You"r successfully registered',
                              //   btnCancelOnPress: () {},
                              //   btnOkOnPress: () {
                              //     Navigator.pushReplacement(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) => login()));
                              //   },
                              // )..show();
                              // var rp = await signup();
                              // print(rp.user);
                              // if (rp != null) {
                              //   Navigator.of(context).push(MaterialPageRoute(
                              //       builder: (context) => menu()));
                              // }
                              UserCredential response = await signup();
                              print("___________________");
                              if (response != null) {
                                await FirebaseFirestore.instance
                                    .collection("users")
                                    .add({"Email": email, "password": pass});
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => login()));
                              } else {
                                print("failed");
                              }
                              print("___________________");
                            },
                            child: Text("Sign Up",
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Container(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("images/search.png"),
                                iconSize: 35,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                    size: 40,
                                  )),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "images/instagram.png",
                                ),
                                iconSize: 35,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
