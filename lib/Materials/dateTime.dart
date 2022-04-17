import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDateTime extends StatefulWidget {
  MyDateTime({Key? key}) : super(key: key);

  @override
  State<MyDateTime> createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime first = DateTime(2021, now.month - 3);
    DateTime last = DateTime(2022, now.day + 50);
    TimeOfDay timeNow = TimeOfDay.now();

    return Scaffold(
        appBar: AppBar(title: Text("Date Time ")),
        body: Center(
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: now,
                        firstDate: first,
                        lastDate: last);
                  },
                  icon: Icon(Icons.access_alarm),
                  label: Text("Date")),
              TextButton(
                  onPressed: () {
                    showTimePicker(context: context, initialTime: timeNow);
                  },
                  child: Icon(Icons.time_to_leave)),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.dateAndTime,
                  onDateTimeChanged: (value) {},
                  initialDateTime: DateTime.now(),
                ),
              ),
            ],
          ),
        ));
  }
}
