import 'package:flutter/material.dart';
import 'package:my_first_pro_vs/login.dart';
import 'package:my_first_pro_vs/register.dart';
import 'package:my_first_pro_vs/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? email = prefs.getString('email');
  String? password = prefs.getString('password');

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: (email != null && password != null) ? 'profile' : 'login', // Check if user is logged in
    routes: {'login': (context) => MyLogin(),
    'register': (context)=>MyRegister(),
      'profile': (context)=>ProfileScreen()
    },
  ));
}
