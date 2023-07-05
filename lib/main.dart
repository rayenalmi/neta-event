import 'package:flutter/material.dart';
import 'package:neta_event/Home/HomePage.dart';
import 'package:neta_event/Inscription/BeforeInscription.dart';
import 'package:neta_event/Inscription/SignIn.dart';
import 'package:neta_event/Inscription/SignUp.dart';
import 'dart:async';

import 'package:neta_event/Slash%20Screen/Group_SC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neta-Event',
        initialRoute: '/',
        routes: {
          '/BeforeInscription': (context) => const BeforeIncription(),
          '/SignUp': (context) => SignUp(),
          '/SignIn' : (context) => SignIn(),
          '/HomePage' : (context) => HomePage(),
        },
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  @override
  void initState() {

    super.initState();
    Timer(
        const Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Group_SC() )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
     //   color: const Color(0xffF7EBE1),
        child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/SlashScreen/frame1.PNG',
                  width: MediaQuery.of(context).size.width * 1.2,
                  height: MediaQuery.of(context).size.height * 1 ,
                  scale: 0.1,
                ),
              ],
            )));
  }
}

