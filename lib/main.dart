import 'package:facebook_app/login_screen.dart';
import 'package:flutter/material.dart';

import 'home_withtabs.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
     'login': (context) => LoginScreen(),
     'home' : (context) => HomeWithTabs()
    },  ));

}


