import 'package:flutter/material.dart';
import 'package:widget_1/birinchibet.dart';
import 'package:widget_1/ekinchibet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<Widget> better = [const Birinchibet(), const Ekinchibet()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        clipBehavior: Clip.antiAlias,
        semanticLabel: "dnfvi",
        width: 200,
        backgroundColor: Colors.amber,
        elevation: 10.10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: Colors.black,
            width: 5,
            style: BorderStyle.solid,
          ),
        ),
        child: const Text("einfvin"),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("iwnedvn"),
      ),
      body: better[_counter],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _counter,
        onTap: (value) {
          _counter = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "1"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplane_ticket,
                color: Colors.black,
              ),
              label: "2"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: "3"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "4"),
        ],
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return Text("Sebep");
        },
      ),
    );
  }
}
