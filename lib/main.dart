import 'package:flutter/material.dart';
import 'package:flutter_beach_app/Screens/login_screen.dart';
import 'package:flutter_beach_app/Screens/register_screen.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/sea4.jpg',
                  fit: BoxFit.cover,
                  height: 400,
                  width: 330,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Explore your dream places",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "Plunge into the atmosphere for the explanation of an unknow planet. You will discover a new planet called Iceland",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Color(0xffFEC300)),
                child: Text("Sign in", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.blueGrey.shade100),
                child: Text("Register", style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.center,),
              ),
            ),
        ]),
      ),
    );
  }
}
