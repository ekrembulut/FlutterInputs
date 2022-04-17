import 'dart:math';

import 'package:flutter/material.dart';

class DropDown1 extends StatefulWidget {
  @override
  State<DropDown1> createState() => _DropDown1State();
}

class _DropDown1State extends State<DropDown1> {
  @override
  List<String> sehirler = ["Ankara", "İstanbul", "İzmir"];
  String secilenSehir = "Ankara";

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('DropDown Menu Items'),
            actions: [
              dropDownMethod()
            ],
          ),
          body: Center(
            child: Column(
              children: [
                DropdownButton(
                  items: [
                    DropdownMenuItem<String>(
                      child: Text("Ankara"),
                      value: "Ankara",
                    ),
                    DropdownMenuItem<String>(
                      child: Text("İstanbul"),
                      value: "İstanbul",
                    ),
                    DropdownMenuItem<String>(
                      child: Text("İzmir"),
                      value: "İzmir",
                    )
                  ],
                  onChanged: (String? sehir) {
                    setState(() {});
                    secilenSehir = sehir!;
                  },
                  value: secilenSehir,
                  hint: Text("Seçim Yapınız"),
                ),
                dropDownMethod()
              ],
            ),
          )),
    );
  }

  DropdownButton<String> dropDownMethod() {
    return DropdownButton(
        items: sehirler
            .map((e) => DropdownMenuItem<String>(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
        onChanged: (String? s) {
          setState(() {
            secilenSehir = s!;
          });
        },
        value: secilenSehir,
        hint: Text("Seçiniz"));
  }

  // DropdownMenuItem<String> sehirListe(List liste) {
  //   String sehirAdi = "";
  //   String value = "";
  //   for (int i = 0; i < liste.length; i++) {
  //     sehirAdi = value = liste[i];
  //   }
  //   return DropdownMenuItem(
  //     child: Text(sehirAdi),
  //     value: value,
  //   );
  // }
}
