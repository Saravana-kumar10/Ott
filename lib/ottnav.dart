import 'dart:collection';

import 'package:flutter/material.dart';


import 'Ott1.dart';

import 'color.dart';
import 'ott3.dart';
import 'ottpro.dart';
class Ottnav extends StatefulWidget {
  const Ottnav({super.key});


  @override
  State<Ottnav> createState() => _OttnavState();
}

class _OttnavState extends State<Ottnav> {

  int _index = 0;
  final ListQueue<int> _navigation =ListQueue();

  final pages = [
    Ottone(),
    Ottthr(),
    Ottpro(),




  ];

  void tap(index) {
    if (index != _index) {
      _navigation.removeWhere((element) => element== index);
      _navigation.addLast(index);
      setState(() {
        _index = index;
      });
    }
  }
  Future<bool> _onWillPop() async {
    if(_index==0) {
      return (await showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              title: new Text('Are you sure?'),
              content: new Text('Do you want to exit an App'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  //<-- SEE HERE
                  child: new Text('No',style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  // <-- SEE HERE
                  child: new Text('Yes',style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
                ),
              ],
            ),
      ));
    }
     else{   setState(() {
          _navigation.removeLast();
          int position =_navigation.isEmpty ? 0: _navigation.last;
          _index=position;
        });}
     return false;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: grd,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,

            body: pages[_index],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home,size: 20,),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.search,size: 20),label: 'Search'),
                BottomNavigationBarItem(icon: Icon(Icons.portrait_rounded,size: 20,),label: 'Profile'),


              ],
              currentIndex: _index,
              onTap: tap,
            )

        ),
      ),
    );
  }
}

