import 'package:flutter/material.dart';
import 'package:webviewflutter/view.dart';

class UrlInpu extends StatefulWidget {
  @override
  _UrlInpuState createState() => _UrlInpuState();
}

class _UrlInpuState extends State<UrlInpu> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.8,
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(hintText: "Put Your URL Or See Demo"),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
            width: size.width * 0.8,
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => View(textEditingController.text));
                Navigator.push(context, route);
              },
              child: Text(
                "Let's see",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
