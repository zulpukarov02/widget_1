import 'package:flutter/material.dart';
import 'package:widget_1/birinchibet.dart';
import 'package:widget_1/ekinchibet.dart';
import 'package:widget_1/ychynchybet.dart';

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

  List<Widget> pages = [
    const Birinchibet(), //0 index

    const Ekinchibet(), //1 index
    const Ychynchybet() //2 index
  ];
  List<int> sandar = [1, 23, 34];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   // clipBehavior: Clip.antiAlias,
      //   width: 300,
      //   backgroundColor: Colors.white,
      //   elevation: 10.10,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(30),
      //     side: const BorderSide(
      //       color: Colors.black,
      //       width: 1,
      //       style: BorderStyle.solid,
      //     ),
      //   ),
      //   child: Column(
      //     children: [
      //       Container(
      //         width: 300,
      //         height: 120,
      //         color: Colors.blue,
      //         child: const Padding(
      //           padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               CircleAvatar(
      //                 backgroundColor: Colors.amber,
      //                 // backgroundImage: ,
      //                 // child: Image.asset(name),
      //               ),
      //               Text("Bektur Saifidin"),
      //               Row(
      //                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text("Ustanovit Status"),
      //                   SizedBox(width: 80),
      //                   Icon(Icons.arrow_drop_down_sharp)
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //       Container(
      //         width: double.infinity,
      //         height: 600,
      //         color: Colors.green,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text("Ustanovit Status"),
      //             Text("Ustanovit Status"),
      //             Text("Ustanovit Status"),
      //             Text("Ustanovit Status"),
      //             Text("Ustanovit Status"),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Text("iwnedvn"),
      // ),
      body: pages[_counter],
      /*
       pages| bul bizde ozgormo 
       []  
      */
      ///
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,

        currentIndex: _counter,
        //0 index boluptur
        onTap: (ozgormo) {
          print("basyldy $ozgormo");
          _counter = ozgormo;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "1 Bet"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplane_ticket,
                color: Colors.black,
              ),
              label: "2 Bet"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "3 Bet"),
        ],
      ),
    );
  }
}
