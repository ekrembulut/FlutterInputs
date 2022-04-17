import 'package:flutter/material.dart';

class GlobalMain extends StatelessWidget {
  GlobalMain({Key? key}) : super(key: key);
  final incKey = GlobalKey<_IncrementState>();
  @override
  Widget build(BuildContext context) {
    print("1");
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Key"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona tıklanma miktarı"),
            Increment(
              key: incKey,
            ),
            
            TextButton(
                onPressed: () {
                  incKey.currentState!.zeroNum();
                },
                child: Icon(Icons.delete))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incKey.currentState!.incrementNum();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Increment extends StatefulWidget {
  Increment({Key? key}) : super(key: key);

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int count = 0;
  void incrementNum() {
    setState(() {
      count++;
    });
  }

  void zeroNum() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(2);
    return Text(
      count.toString(),
      style: TextStyle(color: Colors.red, fontSize: 24),
    );
  }
}
