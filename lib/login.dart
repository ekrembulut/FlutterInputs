import 'package:flutter/material.dart';
import 'package:flutter_inputs_1/yeniSinif.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController controller1;
  late TextEditingController controller2;
  late FocusNode focusnode1;
  int lineSize = 1;

  @override
  void initState() {
    // TODO: implement initState
    controller1 = TextEditingController(text: "Kullanıcı Adı");
    controller2 = TextEditingController(text: "Password");
    focusnode1 = FocusNode();
    focusnode1.addListener(() {
      setState(() {
        
      });
      if (focusnode1.hasFocus) {
        lineSize = 3;
      } else {
        lineSize = 1;
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Column(
            children: [
              TextField(
                maxLines: lineSize,
                focusNode: focusnode1,
                decoration: InputDecoration(
                  hintText: controller1.text,
                ),
                onChanged: (String value) {
                  setState(() {});
                  controller1.value = TextEditingValue(
                    text: value,
                    selection: TextSelection.collapsed(offset: value.length),
                  );
                },
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: "^",
                decoration: InputDecoration(
                  hintText: controller2.text,
                ),
                onChanged: (String deger) {
                  controller2.value = TextEditingValue(
                      text: deger,
                      selection: TextSelection.collapsed(offset: deger.length));
                },
              ),
              TextButton(
                  onPressed: () async {
                    print(controller1.text);
                    print(controller2.text);
                    if (controller1.text == "ekrem" &&
                        controller2.text == "bulut") {
                          Future.delayed(Duration(seconds: 5), () {
                           Navigator.push(context, MaterialPageRoute(builder: (_) => InputClass()));
});
                   
                    }
                    ;
                  },
                  child: Text("Submit")),
              Text(controller1.text),
            ],
          )),
    );
  }
}
