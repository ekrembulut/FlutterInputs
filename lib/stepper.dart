import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  MyStepper({Key? key}) : super(key: key);

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;
  String? isim, email, sifre;
  var key0 = GlobalKey<FormState>();
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("MyStepper Kullanmı")),
        body: SingleChildScrollView(
          child: Stepper(
            steps: _tumStepler(),
            type: StepperType.vertical,
            currentStep: _currentStep,
            onStepTapped: (tiklananStep) {
              setState(() {
                _currentStep = tiklananStep;
              });
            },
            onStepContinue: () {
              setState(() {});
              if (_currentStep < _tumStepler().length) {
                _currentStep++;
                if (_currentStep >= _tumStepler().length) {
                  _currentStep = 0;
                }
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() {});
                _currentStep--;
              }
            },
          ),
        ));
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
          title: Text("Kullanıcı Adı Giriniz"),
          subtitle: Text("Kullanıcı"),
          isActive: true,
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: key0,
              child: TextFormField(
                
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",
                  hintText: "Kullanıcı Adı",
                  border: OutlineInputBorder(),
                ),
                validator: (deger) {
                  if (deger!.length < 8) {
                    return "Kullanıcı adı en az 8 karakter olmalıdır";
                  } else {
                    return null;
                  }
                },
                onSaved: (deger) {
                  isim = deger!;
                },
              ),
            ),
          )),
      Step(
          title: Text("Email Giriniz"),
          subtitle: Icon(Icons.mail),
          isActive: true,
          content: TextFormField(
            
            decoration: InputDecoration(
              label: Text("Email giriniz"),
              hintText: "Email",
              border: OutlineInputBorder(),
            ),
            validator: (girilenDeger) {
              if (girilenDeger!.length > 5) {
                return "Helllp";
              } else {
                return null;
              }
            },
          )),
      Step(
          title: Text("Şifre Giriniz"),
          subtitle: Icon(Icons.wifi_password_outlined),
          isActive: true,
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              
              decoration: InputDecoration(
                labelText: "Şifre",
                hintText: "Şifre",
                border: OutlineInputBorder(),
              ),
            ),
          )),
    ];
    return stepler;
  }
}
