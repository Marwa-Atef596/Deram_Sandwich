import 'package:dream_sandwich/forgetpassword.dart';
import 'package:dream_sandwich/sign.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  var email, pass;
  log() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: pass);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    } else {
      print("not valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                "images/17DEC20_SHAWARMA_CIT_637477356568611748.webp",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Form(
                  key: formstate,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          "Login",
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
                          if (value!.length < 5) {
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
                          pass = newValue;
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
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("haven't account? "),
                                Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => sign()));
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Color(0xffC86F34),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => forget()));
                                  },
                                  child: Text(
                                    "Forget Password?",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xffC86F34),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
                              Navigator.of(context)
                                  .pushReplacementNamed("menu");
                              var user = await log();
                              if (user != null) {
                                Navigator.of(context)
                                    .pushReplacementNamed("menu");
                              }
                            },
                            child: Text("Login",
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ))),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
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
