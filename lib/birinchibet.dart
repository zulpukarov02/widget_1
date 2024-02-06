import 'package:flutter/material.dart';

class Birinchibet extends StatefulWidget {
  const Birinchibet({Key? key}) : super(key: key);

  @override
  _BirinchibetState createState() => _BirinchibetState();
}

class _BirinchibetState extends State<Birinchibet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      floatingActionButton: Center(
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      bottomSheet: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Text(
            'semi transparent bottom sheet :)',
            style: TextStyle(color: Colors.blue),
          ))),
    );
  }
}
