import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewflutter/drawer/privacy.dart';

import 'drawer/about.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  var isloading = true;
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  bool _isLoadingPage;

  @override
  void initState() {
    super.initState();

    _isLoadingPage = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Image.asset("assets/splash.png"),
              RaisedButton(
                color: Colors.white,
                onPressed: () {},
                child: Text("Notification"),
              ),
              RaisedButton(
                color: Colors.white,
                onPressed: () {
                  Route route=MaterialPageRoute(builder: (context)=>AboutUs());
                  Navigator.push(context, route);
                },
                child: Text("About Us"),
              ),
              RaisedButton(
                color: Colors.white,
                onPressed: () {

                  Route route=MaterialPageRoute(builder: (context)=>Privacy());
                  Navigator.push(context, route);
                },
                child: Text("Privacy Policy"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Google"),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            WebView(
              initialUrl: 'https://grocery.jalsiri.com/',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _completer.complete(webViewController);
              },
              onPageFinished: (finish) {
                setState(() {
                  _isLoadingPage = false;
                });
              },
            ),
            _isLoadingPage
                ? Container(
                    alignment: FractionalOffset.center,
                    child: SpinKitDoubleBounce(
                      color: Colors.blue,
                      size: 50.0,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
