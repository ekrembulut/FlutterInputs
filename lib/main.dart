import 'package:flutter/material.dart';

import 'package:flutter_inputs_1/TextFormField/formField.dart';
import 'package:flutter_inputs_1/flutter_input.dart';
import 'package:flutter_inputs_1/flutterdoc.dart';
import 'package:flutter_inputs_1/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FormField1(),
    );
  }
}