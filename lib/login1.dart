import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';



class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              FlutterLogin(onLogin:(deger) {
                
              } , onRecoverPassword: (value) {

              }),
              Container(
                child: Text('Hello World'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}