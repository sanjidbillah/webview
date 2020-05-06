import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("About Us"),centerTitle: true,),
      body: Column(
        children: <Widget>[
          Image.asset("assets/splash.png"),
          
          Center(
            child: SizedBox(
              width: 300,
              child: Text("""The hero image gradually transitions between several large, vibrant images that grab your attention without being too distracting, then as you scroll, it lists a few basic facts about the company, as well as some impressive real-time stats showcasing the popularity of their community.

Like any good inbound marketer, this page then continues the user journey, sharing some of the most recent posts at the bottom of the page. """),
            ),
          )
        ],
      ),
    );
  }
}
