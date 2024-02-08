// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:personalapp/Home.dart';
import 'package:personalapp/aboutus.dart';
import 'package:personalapp/login.dart';
import 'package:personalapp/common/routeconstants.dart';
import 'package:personalapp/contact.dart';
import 'package:personalapp/splash.dart';
import 'site_drawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'BebasNeue',
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
    ),
    initialRoute: RouteConstants.initialRoute,
    routes: {
      RouteConstants.initialRoute: (context) => Splash(),
      RouteConstants.contactRoute: (context) => Contact(),
      RouteConstants.aboutUsRoute: (context) => Aboutus(),
      RouteConstants.loginRoute: (context) => Login(),
      RouteConstants.dashboardRoute: (context) => MyApp(),


    },
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> screens = [Home(), Aboutus(), Contact()];

  int currentIndex = 0;
  int? selectedIndex;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App Title',
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: ()=>{
                  Navigator.pushNamed(context, RouteConstants.loginRoute)
                },
                child: Icon(Icons.logout),
            ),
          ),
        ],
      ),
      //

        body: screens.elementAt(currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (int selectedIndex) => {
            // print('Current Index ${currentIndex}'),
            // print('Selected Index ${selectedIndex}'),
            setState(() {
              currentIndex = selectedIndex;
            }),
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Contact',
            ),
          ],
        ),


      drawer: site_drawer(),
    );
  }
}




