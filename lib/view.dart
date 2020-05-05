import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
    // TODO: implement initState
    super.initState();


    _isLoadingPage = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          WebView(
            initialUrl:
                'https://www.google.com/',
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
    );
  }
}
