import 'package:flutter/material.dart';
import 'package:my_first_pro_vs/login.dart';
import 'package:my_first_pro_vs/register.dart';
import 'package:my_first_pro_vs/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login': (context) => MyLogin(),
    'register': (context)=>MyRegister(),
      'profile': (context)=>ProfileScreen()
    },
  ));
}
