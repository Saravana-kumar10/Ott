import 'package:flutter/material.dart';
 class Ss extends StatelessWidget {
   const Ss({super.key});

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.lightBlue,
         leading: Icon(Icons.menu),
         title: Center(child: Text("HELLO")),
         actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.search),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.camera),
           ),

         ],

       ),

       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(),
           ),
           SizedBox(height: 50),
           ElevatedButton(onPressed: (){}, child: Text("LOG IN")),
           SizedBox(height: 50),
           Image.asset("asset/aa.jpg")


                  ],
       )



     );
   }
 }



