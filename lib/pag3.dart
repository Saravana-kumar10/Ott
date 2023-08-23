import 'package:flutter/material.dart';
class Pg3 extends StatefulWidget {
  const Pg3({super.key});

  @override
  State<Pg3> createState() => _Pg3State();
}

class _Pg3State extends State<Pg3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(),
          color: Colors.black,
          shape: BoxShape.circle,
          ),
          child: Icon(Icons.arrow_back,color: Colors.cyan,),
        ),
        title: Center(child: Text("welcome to page 2")),
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            children: [SizedBox(width: 30,),
              Text("REPORT"),
            ],
          ),
          SizedBox(height: 50,width: 100,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              leading: Icon(Icons.person),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 5),
                borderRadius: BorderRadius.circular(50),),

              trailing: Icon(Icons.list),
              title:Center(child: Text("hi")),
              tileColor: Colors.cyan,
              onTap: (){
                Navigator.pop(context);
              },



            ),
          ),
          SizedBox(height: 50,width: 100,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              leading: Icon(Icons.person),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),),

              trailing: Icon(Icons.list),
              title:Center(child: Text("hi")),
              tileColor: Colors.cyan,



            ),
          ),
          SizedBox(height: 50,width: 100,),
          Row(
            children: [SizedBox(width: 30,),
              Text("Help!!",),
            ],
          ),
          SizedBox(height: 50,width: 100,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              leading: Icon(Icons.question_mark_sharp),
              shape: BeveledRectangleBorder(
                side: BorderSide(width: 2),
                borderRadius: BorderRadius.circular(10),
              ),


              trailing: Icon(Icons.help),
              title:Center(child: Text("layout")),
              tileColor: Colors.cyan,
              minVerticalPadding: 15.0,




            ),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

