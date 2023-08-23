import 'package:dem/test7.dart';
import 'package:flutter/material.dart';

class Sara extends StatefulWidget {
  const Sara({super.key});

  @override
  State<Sara> createState() => _SaraState();
}

class _SaraState extends State<Sara> {

  int _index = 0;

  final pages = [


    Tu(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(

        items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
           BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),
          // BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),
          // BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),
          // BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),
          // BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),




        ],
        currentIndex: _index,
        onTap: tap,

      ),
    );
  }
}

