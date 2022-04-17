import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Check Box")),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 140,
              child: CheckboxListTile(
                title: Text("Ekrem"),
                // secondary: Text("Bulut"),
                value: isChecked,
                checkColor: Colors.yellowAccent,
                dense: false,

                // tristate: true,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),
            Container(
              width: 140,
              child: CheckboxListTile(
                title: Text("Enes"),
                // secondary: Text("Bulut"),
                value: isChecked,
                checkColor: Colors.yellowAccent,
                dense: false,

                // tristate: true,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                  
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: mesaj(),
                    backgroundColor: Colors.red,
                    
                    )
                    
                    );
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }

  Widget mesaj() {
    if (!isChecked) {
      return Text("");
    } else {
      return Text("Ekrem seçildi" , style: TextStyle(color: Colors.white),);
    }
  }
}
