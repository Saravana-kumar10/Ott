
import 'package:flutter/material.dart';


class Sa extends StatefulWidget {
  const Sa({super.key});

  @override
  State<Sa> createState() => _SaState();
}

class _SaState extends State<Sa> {

  String num1="",num2="",selopt="";
  bool clk = false;

  final ctrl =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200,),
          TextFormField(controller: ctrl,),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                if(clk)
                  {
                    num2 = "1";
                    ctrl.text = num2;
                  }
                else
                  {
                    num1 = "1";
                    ctrl.text = num1;
                  }
              }, child: Text("1")),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  num2 = "2";
                  ctrl.text = num2;
                }
                else
                {
                  num1 = "2";
                  ctrl.text = num1;
                }
              }, child: Text("2")),
              ElevatedButton(onPressed: (){
                ctrl.text = "+";
                selopt = "+";
                clk = true;

              }, child: Text("+")),
              ElevatedButton(onPressed: (){

                if(selopt == "+")
                  {
                    int a = int.parse(num1);
                    int b = int.parse(num2);

                    int res = a + b ;


                    ctrl.text =res.toString();
                  }


              }, child: Text("=")),
            ],
          )

        ],
      )
//       body: Column(
//         children: [
//
//
//
//
//
// //
// //           Container(
// //             height: 400,
// //             child: GridView.builder(
// //                 gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
// //                     maxCrossAxisExtent: 200,
// //                     childAspectRatio: 3 / 2,
// //                     crossAxisSpacing: 10,
// //                     mainAxisSpacing: 10),
// //                 itemCount: 4,
// //                 itemBuilder: (BuildContext ctx, index) {
// //                   return Container(
// //                     alignment: Alignment.center,
// //                     decoration: BoxDecoration(
// //                         color: Colors.amber,
// //                         borderRadius: BorderRadius.circular(15)),
// //                     child: Text("hi"),
// //                   );
// //                 }),
// //           ),
// //
// //
// //
// //
// //
// // ///listview builder
// //           Container(
// //             height: 200,
// //             child: ListView.builder(
// //               scrollDirection: Axis.horizontal,
// //                 itemCount: 5,
// //                 itemBuilder: (BuildContext context,index)
// //                     {
// //                       return Padding(
// //                         padding: const EdgeInsets.all(8.0),
// //                         child: Container(
// //                           height: 100,
// //                           width: 120,
// //                           color: Colors.cyan,
// //                           child: Center(child: Text("hi")),
// //                         ),
// //                       );
// //                     }
// //             ),
// //           ),
// //
// //
// // ///slider
// //
// //           CarouselSlider.builder(
// //             options: CarouselOptions(
// //               height: 200,
// //               aspectRatio: 16/9,
// //               viewportFraction: 0.8,
// //               initialPage: 0,
// //               enableInfiniteScroll: true,
// //               reverse: false,
// //               autoPlay: true,
// //               autoPlayInterval: Duration(seconds: 3),
// //               autoPlayAnimationDuration: Duration(milliseconds: 800),
// //               autoPlayCurve: Curves.fastOutSlowIn,
// //               enlargeCenterPage: true,
// //               enlargeFactor: 0.3,
// //               //onPageChanged: callbackFunction,
// //               scrollDirection: Axis.horizontal,
// //             ),
// //             itemCount: 15,
// //             itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
// //             {
// //               return Container(
// //                 height: 200,
// //                 width: 300,
// //                 color: Colors.cyan,
// //                 child: Center(child: Text("hi")),
// //               );
// //             }
// //           )
//
//         ],
//       ),
    );
  }
}
