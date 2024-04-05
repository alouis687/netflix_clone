import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix/screens/loginPage.dart';
import 'package:netflix/screens/signUpPage.dart';

class splashPage extends StatelessWidget {
 
@override
Widget build(BuildContext context){
  Timer(Duration(seconds: 3),(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginPage()));});
  return Scaffold(
    backgroundColor: Colors.black,
    body: Center(
      child: Image.asset('assets/images/png-transparent-netflix-logo.png')
    ),
  );
}
}