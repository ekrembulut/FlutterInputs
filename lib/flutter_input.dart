import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inputs_1/yeniSinif.dart';

class FlutterInput extends StatefulWidget {
  const FlutterInput({Key? key}) : super(key: key);

  @override
  State<FlutterInput> createState() => _FlutterInputState();
}

class _FlutterInputState extends State<FlutterInput> {
  late TextEditingController myController;
  late TextEditingController myController1;
  late FocusNode fcsNode;
  int maxCount = 1;
  @override
  void initState() {
    super.initState();
    myController = TextEditingController(text: "ekrmbulut@gmail.com");
    myController1 = TextEditingController(text: 34.toString());
    fcsNode = FocusNode();
    fcsNode.addListener(() {
      setState(() {
        if (fcsNode.hasFocus) {
        maxCount = 3;
      } else {
        maxCount = 1;
      }
      });
      
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    myController1.dispose();

    super.dispose();
  }

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
                textInputAction: TextInputAction.search,
                keyboardType: TextInputType.number,
                // autofocus: true,
                maxLines: 1,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.amber,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  hintText: myController1.text,
                  prefix: Icon(
                    Icons.phone,
                  ),
                  prefixIconColor: Colors.amber,
                  label: Text(
                    "E-mail",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                onChanged: (String input) {
                  if (input.length > 1) {
                    setState(() {});
                    myController1.value = TextEditingValue(
                      text: input,
                      selection: TextSelection.collapsed(offset: input.length),
                    );
                  }
                },
                onSubmitted: (String deger) async {
                  if (deger == "Ekrem") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InputClass()));
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  focusNode: fcsNode,
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: myController.text,
                  ),
                  maxLines: maxCount,
                  autofocus: true,
                  onChanged: (String deger) {
                    if (deger.length > 3) {
                      setState(() {});
                      myController.value = TextEditingValue(
                          text: deger,
                          selection:
                              TextSelection.collapsed(offset: deger.length));
                    }
                  },
                ),
              ),
              Text(myController.text),
              Text(myController1.text),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    myController = TextEditingController(text: "Ekremmm");
                  });
                },
                child: Icon(Icons.arrow_back),
              )
            ],
          ),
        ),
      ),
    );
  }
}
