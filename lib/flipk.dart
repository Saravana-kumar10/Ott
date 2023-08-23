import 'package:carousel_slider/carousel_slider.dart';
import 'package:dem/flipkart1.dart';
import 'package:dem/model.dart';
import 'package:flutter/material.dart';
class Fk extends StatefulWidget {
  const Fk({super.key});

  @override
  State<Fk> createState() => _FkState();
}

class _FkState extends State<Fk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.menu),
        title: Row(
          children: [
            Column(
              children: [
                Text("FLIPKART",style: TextStyle(fontSize: 20),),
                Text("Explore plus",style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),),
              ],

            ),
            SizedBox(width: 50,),
            Icon( Icons.plus_one_outlined),
            SizedBox(width: 30,),
            Icon( Icons.trolley),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Log in"),
          ),
        ],
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 350,

                decoration: BoxDecoration(
                  // border: Border.all(),

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),


                ),
                child: TextFormField(


                  decoration:InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),

                    hintText: "search for products",


                  ),

                ),
              ),
            ),
            preferredSize: Size.fromRadius(30)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,

              child: ListView.builder(
                itemCount: lis.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext,index )
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(lis[index].image),
                            fit: BoxFit.fill),
                          ),


                        ),
                        Spacer(),
                        Text(lis[index].text),
                      ],
                    ),
                  );
                },

              ),
            ),
            CarouselSlider.builder(
              itemCount: li.length,

                options:  CarouselOptions(
              height: 200,
              aspectRatio: 1/9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.9,
              //onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
              itemBuilder: (BuildContext context, int index, int realIndex)
              {
                return
                  Container(
                    height: 300,
                    width: 400,

                    child: Image(image: AssetImage(li[index].images),fit: BoxFit.fill,),
                  );

              },),
            SizedBox(height: 10,),
            Container(
              height: 170,
              width: 350,

              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [


                    Card(
                      elevation: 9,
                      child: Container(
                        height: 10,
                        width: 100,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.grey,width: .4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(

                                borderRadius:BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5),),
                                image: DecorationImage(image: AssetImage("asset/im3.jpg"),fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Column(
                              children: [
                                Text("dddddd"),
                                Text("aaaaaaaaaa"),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 9,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white24),

                              borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                              image: DecorationImage(image: AssetImage("asset/im.jpg"),fit: BoxFit.fill),
                            ),
                          ),
                          Column(
                            children: [SizedBox(height: 5,),
                              Text("hello"),
                              Text("rrrrrrrrrrrr")
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation:9,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(

                              borderRadius:BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),),
                              image: DecorationImage(image: AssetImage("asset/im.jpg"),fit: BoxFit.fill),
                            ),
                          ),
                          Column(
                            children: [SizedBox(height: 5,),
                              Text("wwwww"),
                              Text("aaaaaaaaaaaaa"),
                            ],
                          ),
                        ],
                      ),
                    ),],


                ),
              ),
            ),
            SizedBox(height: 20,),

            SizedBox(width: 20,),
            Container(
              height: 50,
              width: 351,
              color: Colors.lightBlueAccent.shade100,
              child: Row(
                children: [
                  Text("  End of season",style: TextStyle(fontSize: 20),),
                  SizedBox(width: 150,),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,                    ),
                      child: Icon(Icons.arrow_forward,size: 20,opticalSize: 10,)),
                ],
              ),
            ),



            Container(
              height: 550,
              width: 350,
              decoration: BoxDecoration(

                color: Colors.lightBlueAccent.shade100,

              ),

                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,

                          childAspectRatio: 2/3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          height: 500,
                          width: 250,

                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: GestureDetector(
                                  onTap: ()
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const Fk1()),
                                    );
                                  },
                                  child: Container(
                                    height: 160,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(

                                      image: AssetImage(lis[index].image),fit: BoxFit.fill,),),


                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Column(
                                children: [
                                  Text("image"),
                                  Text("aaaaaaaaaa"),
                                ],
                              ),


                            ],
                          ),
                        );
                      }),
                ),
              ),



          ],
        ),
      ),
    );
  }
}




