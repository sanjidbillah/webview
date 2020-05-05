import 'package:flutter/material.dart';
import 'package:webviewflutter/view.dart';

import 'Splash.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/view': (context) => View(),
    },
    home: Splash(),
  ));
}

