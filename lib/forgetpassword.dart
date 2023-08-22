import 'package:dream_sandwich/login.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class forget extends StatefulWidget {
  const forget({super.key});

  @override
  State<forget> createState() => _forgetState();
}

class _forgetState extends State<forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset("images/616x362Davescombo_large.webp"),
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
                    child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                            color: Color(0xffC86F34),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffC86F34)),
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
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffC86F34)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          prefixIcon: Icon(
                            Icons.phone_android,
                            color: Colors.grey,
                          ),
                          hintText: "phone",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffC86F34)))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffC86F34)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          hintText: "New Password",
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
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffC86F34)),
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
                          hintText: "Confirm password",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffC86F34)))),
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
                          onPressed: () {
                            AwesomeDialog(
                              // btnOkColor: Color(0xffC86F34),
                              // btnCancelColor: Colors.black,
                              context: context,
                              dialogType: DialogType.info,
                              width: 400,
                              animType: AnimType.scale,
                              title: 'Information Saved',
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => login()));
                              },
                            )..show();
                          },
                          child: Text("Save",
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
