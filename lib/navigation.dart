
import 'package:dem/flipk.dart';
import 'package:dem/insta.dart';
import 'package:dem/sec.dart';
import 'package:dem/spotify.dart';
import 'package:flutter/material.dart';
import 'package:dem/pag3.dart';

class Pg1 extends StatefulWidget {
  const Pg1({super.key});

  @override
  State<Pg1> createState() => _Pg1State();
}

class _Pg1State extends State<Pg1> {
  int _index = 0;

  final pages = [
    Fk(),
    In(),
    Sp(),
    Pg3(),
    Se(),




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
          BottomNavigationBarItem(icon: Icon(Icons.home),backgroundColor: Colors.amberAccent,label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_forward),backgroundColor: Colors.blue,label: "insta"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_forward),backgroundColor: Colors.green.shade200,label: "Spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_forward),backgroundColor: Colors.red.shade100,label: "report"),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward,),
              backgroundColor: Colors.pink.shade50,
              label: "2",
          ),

        ],

        currentIndex: _index,
        onTap: tap,



      ),
    );

  }
}
