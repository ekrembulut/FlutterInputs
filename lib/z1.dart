import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inputs_1/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Hi extends StatefulWidget {
  Hi({Key? key}) : super(key: key);

  @override
  State<Hi> createState() => _HiState();
}

class _HiState extends State<Hi> {
  Color color1 = Color.fromRGBO(245, 14, 144, 0.5);
  Color color2 = Color.fromRGBO(249, 9, 146, 0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: Stack(
        children: [
          Image.asset(
            "assets/background.png",
            fit: BoxFit.fill,
          ),
          Center(
              child: Container(
            margin: EdgeInsets.only(bottom: 400),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(
                  "assets/kopek3.png",
                  fit: BoxFit.fill,
                )),
          )),
          Text(
            "Ekrem",
            style: GoogleFonts.spartan(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Login",
                        style: GoogleFonts.spartan(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    margin: EdgeInsets.only(top: 580),
                    decoration: BoxDecoration(
                        color: color2, borderRadius: BorderRadius.circular(60)),
                    // alignment: Alignment.center,
                    // color: Colors.white,
                    width: 232, height: 68,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Sign Up",
                      style: GoogleFonts.spartan(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  // margin: EdgeInsets.only(top: 550),
                  decoration: BoxDecoration(
                      color: color2, borderRadius: BorderRadius.circular(60)),
                  // alignment: Alignment.center,
                  // color: Colors.white,
                  width: 232, height: 68,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
