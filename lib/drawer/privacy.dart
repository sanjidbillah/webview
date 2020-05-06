import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("""Privacy Policy of google.com
This privacy policy has been compiled to better serve those who are concerned with how their "Personally identifiable information" (PII) is being used online. PI is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website."""),
      ),
    );
  }
}
