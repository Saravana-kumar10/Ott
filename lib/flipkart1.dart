import 'package:carousel_slider/carousel_slider.dart';
import 'package:dem/model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Fk1 extends StatefulWidget {
  const Fk1({super.key});

  @override
  State<Fk1> createState() => _Fk1State();
}

class _Fk1State extends State<Fk1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: GestureDetector(
        //     onTap: ()
        //     {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const Pg1(),),
        //       );
        //     },
        //     child: Icon(Icons.arrow_back)),
        title: Container(
            height: 30,
            width: 30,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(

              shape: BoxShape.circle,
              image:  DecorationImage(image: AssetImage("asset/Flogo.png"),fit: BoxFit.fill),
            ) ,
            ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.trolley),
          SizedBox(width: 30,),
          Text("Login    "),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children:[
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16/9,

                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  //onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,


                ),
                itemCount: 15,

                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                {
                  return Container(
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:AssetImage(li[itemIndex].images),
                      fit: BoxFit.fill),
                    ),

                  );
                }
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Icon(Icons.favorite_border_outlined),),
            Positioned(
              right: 20,
                top: 60,

                child: Icon(Icons.double_arrow),
            )]
          ),
          Container(

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("POCO",),
                  Text("POCOC51(Black,64gb) (4GB RAM)"),
                  SizedBox(height: 10,),
                  RatingBar.builder(
                    initialRating: 4.5,
                    itemSize: 30,
                    minRating: 2,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 20,
                    width: 150,
                    color: Colors.greenAccent,
                    child: Center(
                      child: Text("Extra 3000 off",style: TextStyle(
                        color: Colors.green,
                      ),),
                    ),
                  ),
                  SizedBox(height: 20, ),
                  Row(
                    children: [
                      RichText(
                          text: TextSpan(
                            text: '30% off  ',
                          style: TextStyle(color: Colors.green,),
                          children: [
                            TextSpan(
                              text: '₹9999 ',style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),
                            ),
                            TextSpan(
                              text: ' ₹6,999  ',
                              style: TextStyle(color: Colors.black)

                            ),
                            TextSpan(
                              text: "\n\n + ₹29 Secured Packing fee   ",
                              style: TextStyle(fontSize: 10,color: Colors.black),
                            ),
                            TextSpan(
                              text: " \n EMI from ₹343/month.",
                              style: TextStyle(fontSize: 10,color: Colors.black),
                            ),
                            TextSpan(
                              text: "viewplan",
                              style: TextStyle(
                                fontSize: 10,color: Colors.blue,
                              ),
                            ),

                            TextSpan(
                              text: "\n\nfind a seller that deliver to \nyou.",
                              style: TextStyle(
                                fontSize: 10,color: Colors.black
                              ),

                            ),




                          ]
                          ),

                        textScaleFactor: 2,

                        ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 120,),
                            Container(

                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1),
                                borderRadius: BorderRadius.circular(5),


                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText:"enter pincode"
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),








                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 100,
                    width: 400,
                    
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Expanded(
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.fire_truck),
                          SizedBox(width: 10,),
                        Column(
                          children: [
                            SizedBox(height: 20,),
                            RichText(
                               text: TextSpan(
                                   text: "Free delivery ",
                                 style: TextStyle(
                                   color: Colors.green,fontSize: 20
                                 ),
                                 children:[

                                     TextSpan(
                                       text: '₹44 ',style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),
                                     ),
                                   TextSpan(
                                     text: "| Delivered by 30jun,",
                                     style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold)
                                   ),
                                   TextSpan(
                                     text: "\nFriday",
                                     style:TextStyle(
                                       color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
                                     ),
                                   ),
                                   TextSpan(
                                     text: "\n if ordered within ",
                                     style: TextStyle(
                                       color: Colors.grey
                                     )
                                   )
                                 ],

                               ),

                            ),
                          ],
                        ),

                          // Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),

                  ),

                ],
              ),
            ),
          ),



        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(


          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 7,
              blurRadius: 2,
              offset: Offset(3, 3),
            )
          ],
        ),
        height: 50,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Text("Go to Cart",style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),),
              ),
            ),
            Expanded(
              child: Container(
                             alignment: Alignment.center,
                color: Colors.red.shade50,
                child: Text("Buy Now",style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
