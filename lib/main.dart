import 'package:flutter/material.dart';
import 'package:flutter_inputs_1/Materials/DropDownMenuItems.dart';
import 'package:flutter_inputs_1/Materials/dateTime.dart';
import 'package:flutter_inputs_1/Materials/slider.dart';

import 'package:flutter_inputs_1/TextFormField/formField.dart';
import 'package:flutter_inputs_1/Materials/checkBox.dart';
import 'package:flutter_inputs_1/flutter_input.dart';
import 'package:flutter_inputs_1/login.dart';
import 'package:flutter_inputs_1/login1.dart';
import 'package:flutter_inputs_1/Materials/radioButton.dart';
import 'package:flutter_inputs_1/stepper.dart';
import 'package:flutter_inputs_1/usingGlobalKey/mainPage.dart';
import 'package:flutter_inputs_1/yeniStepper.dart';
import 'package:flutter_inputs_1/z1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: StepperOrnek(),
    );
  }
}