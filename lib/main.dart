

import 'package:flutter/material.dart';
import 'package:patientfrontend/screens/Login.dart';
import 'package:patientfrontend/screens/addMedical.dart';
import 'package:patientfrontend/screens/otp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(useMaterial3: true),
    routes: {
      '/': (context) => Login(),
      '/otp':(context)=>Otp(),
      '/medical/add':(context)=>AddMedical(),
    },
  ));
}
