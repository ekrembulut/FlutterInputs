import 'package:flutter/material.dart';

class SwitchButon extends StatefulWidget {
  SwitchButon({Key? key}) : super(key: key);

  @override
  State<SwitchButon> createState() => _SwitchButonState();
}

class _SwitchButonState extends State<SwitchButon> {
  bool switchState = false;
  String sehirler = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch Button")),
      body: Column(
        children: [
          Container(
            child: RadioListTile<String>(
              title: Text("Ankara"),
              value: "Ankara",
              groupValue: sehirler,
              onChanged: (String? deger) {
                setState(() {
                  
                  sehirler = deger!;
                  debugPrint(sehirler);
                });
              },
            ),
          ),
          Container(
            child: RadioListTile<String>(
              title: Text("İstanbul"),
              value: "İstanbul",
              groupValue: sehirler,
              onChanged: (String? deger) {
                setState(() {
                  sehirler = deger!;
                  debugPrint(sehirler);
                });
              },
            ),
          ),
          Container(
            child: SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  
                  switchState = deger;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
