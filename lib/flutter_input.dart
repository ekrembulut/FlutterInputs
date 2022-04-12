import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inputs_1/yeniSinif.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Input",
            textAlign: TextAlign.center,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
    
            children: [
              TextField(
                showCursor: true,
                // obscureText: true, -> şifreler için kullanılabilir
                // obscuringCharacter: "*",
                maxLength: 10,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter phone number",
                  prefix: Icon(Icons.phone),
                  prefixIconColor: Colors.amber,
                  label: Text("Label"),
                  ),
                onSubmitted: (String deger) async {
                  if (deger == "Ekrem") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InputClass()));
                  }
                },
              ),
              TextField(
                           
                ),
            ],
          ),
        ),
      ),
    );
  }
}
