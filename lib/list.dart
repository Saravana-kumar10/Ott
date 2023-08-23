


import 'dart:math';

import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:dem/ottpro.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class Li extends StatefulWidget {
  const Li({super.key});

  @override
  State<Li> createState() => _LiState();
}

class _LiState extends State<Li> {
DateFormat format=DateFormat('dd/MM/yyyy');
   final myitem= TextEditingController();
   final myitemone= TextEditingController();
final myitemtwo= TextEditingController();
final myitemthree= TextEditingController();
final lessvalue= TextEditingController();
final greatvalue= TextEditingController();
final height= TextEditingController();
final weight=  TextEditingController();
   String age="";

   List lis=[];
   String val="";
   String? formattedDate;
   late double bmivalue;
String? res;

   DateCalculate()
   { setState(() {

     DateTime fmd= format.parse(myitemone.text);
      DateTime curate=DateTime.now();
      int y= curate.year-fmd.year;
      int m=curate.month-fmd.month;
      int d=curate.day-fmd.day;
      age="  $y years$m monts $d days old";


   });

   }
   Bmicalculate()
   {
     num h=int.parse(height.text);
     double w= double.parse(weight.text);
     setState(() {
       num sh=pow(h, 2);
       bmivalue= w/(sh/10000);
       res="RESULT : ${bmivalue.toStringAsFixed(2)} ";

     });


   }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: PageView(
        controller: PageController(initialPage: 4),
        children:[
          Container(
            height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Center(
                child: SizedBox(
                  height: 80,
                  width: 200,
                  child: TextFormField(
                    autofocus: true,
                    showCursor: true,
                    controller: myitem,



                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                     hintText: 'enter some data',
                      hintStyle: TextStyle(backgroundColor: Colors.grey.shade300),

                    ),


                  ),

                ),
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: TextFormField(
                    autofocus: true,
                    showCursor: true,
                    controller: myitemone,



                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'No of item ',
                      hintStyle: TextStyle(backgroundColor: Colors.grey.shade300),

                    ),


                  ),

                ),
              ),
              SizedBox(height: 20,),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: (){
                      setState(() {
                        if (lis.length < int.parse(myitemone.text)) {
                          lis.insert(0, int.parse(myitem.text));
                          myitem.clear();
                        }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(

                              const SnackBar(content: Text('Value cannot be added',style: TextStyle(color: Colors.white,fontSize: 20),)),

                            );
                          }
                      }
                        );

                  },
                    autofocus: true,

                    child: Text('add to list',),),
                  OutlinedButton(
                    onPressed: (){
                      setState(() {

                          lis.removeWhere((element) =>
                          element == int.parse(myitem.text));

                        myitem.clear();

                      });

                    },
                    autofocus: true,

                    child: Text('remove from list',),),
                ],
              ),
              Divider(
                thickness: 4,
                color: Colors.brown,
              ),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  OutlinedButton(
                    onPressed:() {
                      setState(() {

                        var a = lis.reduce((value, element) => value > element ? value : element);
                        myitem.text=a.toString();
                      });

                      },
                    autofocus: true,

                    child: Text('max:',),),
                  OutlinedButton(
                    onPressed:() {
                      setState(() {
                        var a = lis.reduce((value, element) => value < element ? value : element);
                        myitem.text=a.toString();
                      });

                    },
                    autofocus: true,

                    child: Text('min:',),),

                ],
              ),
              Divider(
                thickness: 4,
                color: Colors.brown,
              ),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  OutlinedButton(
                    onPressed:() {
                      setState(() {
                        lis.sort();
                      });

                    },
                    autofocus: true,

                    child: Text('sort.A',),),
                  OutlinedButton(
                    onPressed:() {
                      setState(() {
                        lis.sort((b,a)=>a.compareTo(b));
                      });

                    },
                    autofocus: true,

                    child: Text('sort.D',),),
                ],
              ),
              Divider(
                thickness: 4,
                color: Colors.brown,
              ),
              Row(
                children: [
                  SizedBox(width: 50,),
                  SizedBox(height: 50,
                  width: 100,
                    child: TextFormField(
                      autofocus: true,
                      showCursor: true,
                      controller: lessvalue,



                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: 'num',
                        hintStyle: TextStyle(backgroundColor: Colors.grey.shade300),

                      ),


                    ),
                  ),
                  OutlinedButton(
                    onPressed:() {
                      setState(() {
                        lis= lis.where((element) => element<int.parse(lessvalue.text)).toList();

                      });

                    },
                    autofocus: true,

                    child: Text('<',),),
                  SizedBox(width: 50,),
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: TextFormField(
                      autofocus: true,
                      showCursor: true,
                      controller: greatvalue,



                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: 'num',
                        hintStyle: TextStyle(backgroundColor: Colors.grey.shade300),

                      ),


                    ),
                  ),
                  OutlinedButton(
                    onPressed:() {
                      setState(() {
                        lis= lis.where((element) => element>int.parse(greatvalue.text)).toList();

                      });

                    },
                    autofocus: true,

                    child: Text('<',),),
                ],
              ),

              SizedBox(height: 20,),

              Expanded(
                child: ListView.builder(
                  itemCount: lis.length,
                    itemBuilder: (BuildContext context,int index)
                    { return ListTile(
                      dense: true ,
                      tileColor: Colors.black,
                      title: Center(child: Text('${lis[index]}',style: TextStyle(color: Colors.white),)),
                    );

                    }

                ),
              )





            ],
          ),
        ),
        Container(
          child:
          Column(
            children: [
              Center(
                child: SizedBox(
                  height: 80,
                  width: 200,
                  child: TextFormField(
                    autofocus: true,
                    showCursor: true,
                    controller: myitemtwo,



                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'enter number',
                      hintStyle: TextStyle(backgroundColor: Colors.grey.shade300),

                    ),


                  ),

                ),
              ),
              OutlinedButton(onPressed:(){
               setState(() {
                 int i= int.parse(myitemtwo.text);
                 if(i.isEven)
                 {
                   val="even";
                 }
                 else
                 {
                   val="odd";
                 }
               });
              } ,
                  child: Text('ODD/EVEN')),

              SizedBox(height:100,child: Center(child: Text("$val",style: TextStyle(color: Colors.red,fontSize: 20),))),
            ],
          ),



        ),
        Container(
          child: Column(
            children:[
              Center(
                child: SizedBox(
                  height: 80,
                  width: 200,
                  child: TextFormField(
                    autofocus: true,
                    showCursor: true,
                    controller: myitem,



                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'enter Name',
                      hintStyle: TextStyle(backgroundColor: Colors.grey.shade300),

                    ),


                  ),

                ),
              ),
              Center(
                child: SizedBox(
                  height: 80,
                  width: 200,
                  child:DateTimeField(
                    format: format,
                    controller: myitemthree,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter date",
                    ),
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: currentValue ?? DateTime.now(),
                        lastDate: DateTime(2100),
                      );
                    },
                  ),

                ),
              ),

             ElevatedButton(onPressed:  DateCalculate, child: Text("click")),


              SizedBox(height:100,child: Center(child: Text("Name: ${myitem.text}\nAge:$age",style: TextStyle(color: Colors.red,fontSize: 20),))),

            ]
          ),


        ),
          Container(
            child: Column(
              children: [
                Text("BMI Calculator",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 40,),


                SizedBox(height: 50,
                  width: 200,
                  child: TextFormField(
                    controller: height,
                    decoration: InputDecoration(
                      labelText: "Height in cm"
                    ),



                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: TextFormField(
                    controller: weight,
                    decoration: InputDecoration(
                        labelText: "weight in kg"
                    ),


                  ),
                ),
                SizedBox(height: 20,),

                ElevatedButton(onPressed: Bmicalculate, child: Text("Calculate")),
                SizedBox(height: 20,),
                Text("Result:$res",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

              ],
            ),
          ),

        ]
      ),
    );
  }
}
