import 'package:flutter/material.dart';
import 'package:widget_1/birinchibet.dart';

class Ekinchibet extends StatefulWidget {
  const Ekinchibet({Key? key}) : super(key: key);

  @override
  _EkinchibetState createState() => _EkinchibetState();
}

class _EkinchibetState extends State<Ekinchibet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Birinchibet()),
                  );
                },
                child: const Icon(Icons.arrow_back_ios_new),
              ),
              TextButton(
                child: Text("Shoowmodel"),
                onPressed: () {
                  showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          height: 300,
                          color: Colors.amber,
                        );
                      });
                },
              ),
              TextButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      firstDate: DateTime(2018),
                      lastDate: DateTime.now(),
                    );
                  },
                  child: Text("DateTime")),
              TextButton(
                  onPressed: () {
                    // showTimePicker(
                    //   context: context,
                    //   initialTime: TimeOfDay.now(),
                    // );

                    showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(100, 50, 30, 0),
                      items: [
                        PopupMenuItem(
                          child: Text("oinevien"),
                        ),
                      ],
                    );
                  },
                  child: Text("TimePiker")),
             
            ],
          ),
        ),
      ),
    );
  }
}
