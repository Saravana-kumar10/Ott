import 'package:dem/ottdoc.dart';
import 'package:flutter/material.dart';
import 'color.dart';


class Ottpage extends StatefulWidget {
  const Ottpage({super.key});



  @override
  State<Ottpage> createState() => _OttpageState();
}

class _OttpageState extends State<Ottpage> {
late PageController control;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: grd,
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
        body: PageView(
          scrollDirection: Axis.horizontal,



          children: [

            Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(

              child: Column(
                children: [


                  GridView.builder(

                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150,

                            childAspectRatio: 3/2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 2),
                      shrinkWrap: true,
                      itemCount: limg.length,


                      itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage(limgone[index].images),fit: BoxFit.fill,),),


                          );
                      }
                  ),
                ],
              ),

            ),
                    ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                child: Column(
                  children: [

                    GridView.builder(

                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150,

                            childAspectRatio: 3/2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 2),
                        shrinkWrap: true,
                        itemCount: limg.length,


                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage(limg[index].image),fit: BoxFit.fill,),),


                          );
                        }
                    ),
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                child: Column(
                  children: [

                    GridView.builder(

                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150,

                            childAspectRatio: 3/2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 2),
                        shrinkWrap: true,
                        itemCount: limgone.length,


                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage(limgone[index].images),fit: BoxFit.fill,),),


                          );
                        }
                    ),
                  ],
                ),

              ),
            )
          ],
        ),


      ),
    );
  }
}

