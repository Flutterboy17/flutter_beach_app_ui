import 'package:flutter/material.dart';
import 'package:flutter_beach_app/Screens/register_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'forgot_screen.dart';
import 'main_screen.dart';
//import 'package:flutter_beach_app/Screens/main_screen.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
            maxHeight: 500,
            minHeight: 30,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            body: Stack(children: [
              SizedBox(
                height: 800,
                child: Image.asset(
                  'assets/sea1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 70,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome\nBack to Nature!",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Enter your details below to login",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.arrow_downward_sharp,
                        size: 30, color: Colors.green),
                  ],
                ),
              )
            ]),
            panelBuilder: (ScrollController sc) => Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(children: [
                    Container(
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.green),
                      decoration: InputDecoration(
                          fillColor: Colors.green,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.green)),
                          suffixIcon:
                              Icon(FontAwesomeIcons.envelope, color: Colors.green),
                          labelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.green),
                      decoration: InputDecoration(
                          fillColor: Colors.green,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.green)),
                          suffixIcon:
                              Icon(FontAwesomeIcons.lock, color: Colors.green),
                          labelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.green),
                      decoration: InputDecoration(
                          fillColor: Colors.green,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.green)),
                          suffixIcon:
                              Icon(FontAwesomeIcons.lock, color: Colors.green),
                          labelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green),
                          )),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotScreen()));
                        },
                        child: Text("Forgot Password?",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                )),
                      ),
                    ],),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => MainScreen()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Or",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "login with",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.facebook,
                          size: 30,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          FontAwesomeIcons.google,
                          size: 30,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          FontAwesomeIcons.twitter,
                          size: 30,
                          color: Colors.green,
                        ),
                      ],
                    ),SizedBox(height: 10,),
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => RegisterScreen()));
                      },
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500, color: Colors.green),
                      ),
                    ),
                  ]),
                )));
  }
}
