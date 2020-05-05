import 'package:flutter/material.dart';
import 'package:webviewflutter/view.dart';


void main() {
  runApp(MaterialApp(
    routes: {
      '/view': (context) => View(),
    },
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, "/view");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            "assets/splash.png",
            height: size.height * 0.5,
            width: size.width * 0.9,
          ),
        ));
  }
}
