import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_inputs_1/yeniSinif.dart';

class FormField1 extends StatefulWidget {
  const FormField1({Key? key}) : super(key: key);
  @override
  State<FormField1> createState() => _FormField1State();
}

class _FormField1State extends State<FormField1> {
  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text('Form Field Sayfası'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(children: [
                  TextFormField(
                    initialValue: "ekrmbulut@gmail.com",
                    decoration: InputDecoration(
                      labelText: "E-Mail",
                      hintText: "Mailiniz Giriniz...",
                      border: OutlineInputBorder(),
                    ),
                    validator: (deger) {
                      if (!EmailValidator.validate(deger!)) {
                        return "Geçersiz e-mail";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (deger) {
                      _email = deger!;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Kullanıcı Adı",
                      hintText: "Kullanıcı Adınız...",
                      border: OutlineInputBorder(),
                    ),
                    validator: (deger) {
                      if (deger!.length < 1) {
                        return "Kullanıcı Adınız Çok Kısa..";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (deger) {
                      _userName = deger!;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      // errorStyle: TextStyle(color: Colors.amber),
                      border: OutlineInputBorder(),
                      labelText: "Şifre",
                      hintText: "Şifrenizi Giriniz",
                    ),
                    validator: (deger) {
                      if (deger!.length < 8) {
                        return "Şifre en az 8 karakter olmalıdır";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (deger) {
                      _password = deger!;
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      bool _validate = _formKey.currentState!.validate();
                      if (_validate) {
                        _formKey.currentState!.save();
                        String result =
                            'username:$_userName\nemail:$_email\nSifre:$_password';

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.orange.shade300,
                            content: Text(
                              "Giriş İşlemi Başarılı",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        );
                        _formKey.currentState!.reset();
                        Future.delayed(Duration(seconds: 1), () {
  Navigator.push(context, MaterialPageRoute(builder: (_) => InputClass()));
});
                      }
                    },
                    child: Text('Onayla'),
                  ),
                ]),
              ),
            ),
          )),
    );
  }
}
