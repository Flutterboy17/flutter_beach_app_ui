import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beach_app/Screens/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         resizeToAvoidBottomInset: false,
            bottomNavigationBar: CurvedNavigationBar(
              items: const [
                // ignore: deprecated_member_use
                Icon(
                  FontAwesomeIcons.rss,
                  size: 20,
                  color: Colors.black,
                ),
                Icon(
                  FontAwesomeIcons.heart,
                  size: 20,
                  color: Colors.black,
                ),
                Icon(
                  FontAwesomeIcons.message,
                  size: 20,
                  color: Colors.black,
                ),
                Icon(
                  FontAwesomeIcons.user,
                  size: 20,
                  color: Colors.black,
                ),
              ],
              color: Colors.grey.shade200,
              
              buttonBackgroundColor: Colors.green,
              height: 56,
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.white,
            ),
            body: HomeScreen()));
  }
}


