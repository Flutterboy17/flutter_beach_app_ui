import 'package:flutter/material.dart';
import 'package:flutter_beach_app/Screens/login_screen.dart';
import 'package:flutter_beach_app/Screens/main_screen.dart';
import 'package:flutter_beach_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/sea3.jpg'),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Welcome \nto Nature Beauty",
                        style: TextStyle(
                          color: Colors.black87,
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    top: 10,
                    child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.green,), onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>SplashScreen()));
                    
                    },)),
                  Positioned(
                    bottom: -56,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.green,
                      child: SizedBox(
                        height: 115,
                        width: 115,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.asset(
                            'assets/sea8.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                "Enter Your Details",
                style: TextStyle(fontSize: 24,color: Colors.green, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.green),
                      decoration: InputDecoration(
                          fillColor: Colors.green,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.green)),
                          suffixIcon:
                              Icon(FontAwesomeIcons.user, color: Colors.green),
                          labelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green),
                          )),
                    ),
                    SizedBox(
                      height: 10,
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
                          suffixIcon: Icon(FontAwesomeIcons.envelope,
                              color: Colors.green),
                          labelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green),
                          )),
                    ),
                    SizedBox(
                      height: 10,
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
                          suffixIcon: Icon(FontAwesomeIcons.lock,
                              color: Colors.green),
                          labelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green),
                          )),
                    ),
                    SizedBox(
                      height: 10,
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
                          suffixIcon: Icon(FontAwesomeIcons.lock,
                              color: Colors.green),
                          labelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green),
                          )),
                    ),
                    SizedBox(
                      height: 18,
                    ),
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
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Already have an account?",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder) => LoginScreen())),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.green,
                           
                            fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
