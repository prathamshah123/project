import 'dart:developer';
import 'package:abc/adduser.dart';
import 'package:abc/login.dart';
import 'package:abc/navigationbar.dart';
import 'package:abc/profile.dart';
import 'package:abc/vehiclerecords.dart';
import 'package:flutter/material.dart';
import 'package:abc/splash.dart';
import 'package:abc/createprofile.dart';
import 'package:abc/employee.dart';
import 'package:abc/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
      //home: ScanScreen()
      //Pincode(title: "pincode app"),
    );
  }
}
