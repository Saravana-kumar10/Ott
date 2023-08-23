
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dem/Ottmore.dart';
import 'package:dem/color.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dem/ottdoc.dart';
import 'package:page_transition/page_transition.dart';


import 'ott2.dart';

class Ottone extends StatefulWidget {
  const Ottone({super.key});

  @override
  State<Ottone> createState() => _OttoneState();
}

class _OttoneState extends State<Ottone> {

  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,top: true,bottom: true,right: true,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: grd,
        ),
        child: Scaffold(


          body: DefaultTabController(
              length: 3,

              child:NestedScrollView(


                  headerSliverBuilder:(BuildContext context, bool innerBoxIsScrolled)
                  {
                    return[
                      SliverAppBar(

                        shadowColor: Colors.white,
                        excludeHeaderSemantics: true,

                        floating: true,
                        automaticallyImplyLeading: false,
                        // snap: true,


                        pinned: true,

                        toolbarHeight: 10,


                        foregroundColor: Colors.white,


                        bottom:TabBar(
                          indicator: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: black.withOpacity(.5)
                             ),
                            indicatorColor: Colors.purple,
                            tabs: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Movie",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("TvShows",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              ),


                            ]),
                      )
                    ];
                  },
                  body: TabBarView(
                      children: [
                        Container(
                          height: double.infinity,
                          width: double.infinity,



                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CarouselSlider.builder(
                                itemCount: limg.length,
                                options:  CarouselOptions(
                                  onPageChanged: (index, reason){
                                    setState(() {
                                      currentindex = index;
                                    });
                                  },
                                  height: 300,
                                  aspectRatio: 1/9,
                                  viewportFraction: 1.1,
                                  initialPage: 0,
                                  enableInfiniteScroll: true,

                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 3),
                                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.decelerate,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.9,

                                  scrollDirection: Axis.horizontal,
                                ),

                                itemBuilder: (BuildContext context, int index, int realIndex)
                                {
                                  return
                                    Container(
                                      height: 300,
                                      width: double.infinity,


                                      child: Image(image: AssetImage(limg[index].image),fit: BoxFit.fill,),

                                    );

                                },

                                  ),
                                Center(child: DotsIndicator(dotsCount: limg.length,position: currentindex,
                                  decorator: DotsDecorator(
                                    color: grey,
                                    activeSize: const Size(18.0, 9.0),
                                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                      spacing: const EdgeInsets.all(10.0)

                                ),)),



                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(" Continue Watching...",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          FlickerAnimatedText('More >',textStyle: TextStyle(fontWeight: FontWeight.bold)),

                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 100,
                                        stopPauseOnTap: true,
                                        onTap: () {
                                        Navigator.push(context,
                                        PageTransition(child: Ottmore(), type: PageTransitionType.rightToLeft));



                                        },
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 200,
                                    width: double.infinity,
                                    decoration: BoxDecoration(

                                    ),


                                    child: ListView.builder(
                                      reverse: true,
                                      shrinkWrap: true,

                                      itemCount: limgone.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return  Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: Colors.white54,
                                              borderRadius: BorderRadius.circular(10),
                                            ),


                                            child: GestureDetector(
                                              onTap: ()
                                              {
                                                Navigator.push(
                                                  context,
                                                  PageTransition(
                                                   duration: Duration(milliseconds: 700),inheritTheme: false,child: Otttwo(), type: PageTransitionType.leftToRightPop,childCurrent: Ottone(),
                                                   ctx: context,
                                                  ),

                                                );

                                              },
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                      flex:3,

                                                      child: ClipRRect(
                                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                                        child: Image.asset(limgone[index].images,fit: BoxFit.fill,width:150,),

                                                      )),

                                                  Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Row(
                                                      children: [
                                                        Center(child: Text(limgone[index].text,style: TextStyle(fontSize: 20),)),
                                                        Spacer(),
                                                        Icon(Icons.more_vert,size: 20,),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text("  Watch List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          WavyAnimatedText('More >',textStyle: TextStyle(fontWeight: FontWeight.bold)),


                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 100,
                                        stopPauseOnTap: true,
                                        onTap: ()  {
                                          Navigator.push(context,
                                              PageTransition(child: Ottmore(), type: PageTransitionType.rightToLeft));



                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 200,
                                    width: double.infinity,



                                    child: ListView.builder(

                                      shrinkWrap: true,

                                      itemCount: limgone.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limgone[index].images),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text(" Downloads  >",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          WavyAnimatedText('More >',textStyle: TextStyle(fontWeight: FontWeight.bold)),


                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 100,
                                        stopPauseOnTap: true,
                                        onTap: ()  {
                                          Navigator.push(context,
                                              PageTransition(child: Ottmore(), type: PageTransitionType.rightToLeft));



                                        },
                                      ),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 200,
                                    width: double.infinity,



                                    child: ListView.builder(
                                      shrinkWrap: true,

                                      itemCount: 1,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Container(
                                          width: 150,
                                         decoration: BoxDecoration(
                                           color: Colors.transparent,

                                           borderRadius: BorderRadius.circular(10),
                                         ),


                                          child: Column(
                                            children: [
                                              Expanded(
                                                  flex:3,

                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),

                                                    child: Image.asset(limgone[index].images,fit: BoxFit.cover,width:150,),

                                                  )),

                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Row(
                                                  children: [
                                                    Center(child: Text(limgone[index].text,style: TextStyle(fontSize: 20),)),
                                                  Spacer(),
                                                    Icon(Icons.more_vert,size: 20,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text("  Movies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          WavyAnimatedText('More >',textStyle: TextStyle(fontWeight: FontWeight.bold)),


                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 100,
                                        stopPauseOnTap: true,
                                        onTap: () {
                                          Navigator.push(context,
                                              PageTransition(child: Ottmore(), type: PageTransitionType.rightToLeft));



                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 200,width: double.infinity,


                                    child: ListView.builder(
                                      reverse: true,
                                      shrinkWrap: true,

                                      itemCount: limg.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limg[index].image),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text("  Drams",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          WavyAnimatedText('More >',textStyle: TextStyle(fontWeight: FontWeight.bold)),


                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 100,
                                        stopPauseOnTap: true,
                                        onTap: () {
                                          Navigator.push(context,
                                              PageTransition(child: Ottmore(), type: PageTransitionType.rightToLeft));



                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 200,
                                    width: double.infinity,



                                    child: ListView.builder(
                                      shrinkWrap: true,

                                      itemCount: limgo.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limgo[index].imageo),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: double.infinity,

                          child:SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Drama Movies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          FlickerAnimatedText('more >',textStyle: TextStyle(fontWeight: FontWeight.bold)),


                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 100,
                                        stopPauseOnTap: true,
                                        onTap: ()  {
                                          Navigator.push(context,
                                              PageTransition(child: Ottmore(), type: PageTransitionType.rightToLeft));



                                        },
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,



                                    child: ListView.builder(

                                      shrinkWrap: true,

                                      itemCount: limg.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limg[index].image),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text("Action Movies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          FlickerAnimatedText('more >',textStyle: TextStyle(fontWeight: FontWeight.bold)),


                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 100,
                                        stopPauseOnTap: true,
                                        onTap: () {
                                          Navigator.push(context,
                                              PageTransition(child: Ottmore(), type: PageTransitionType.rightToLeft));



                                        },
                                      ),],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,



                                    child: ListView.builder(
                                      reverse: true,
                                      shrinkWrap: true,

                                      itemCount: limgone.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limgone[index].images),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Comedy Movies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          FlickerAnimatedText('more >',textStyle: TextStyle(fontWeight: FontWeight.bold)),


                                        ],
                                        isRepeatingAnimation: true,
                                        totalRepeatCount: 100,
                                        stopPauseOnTap: true,
                                        onTap: ()  {
                                          Navigator.push(context,
                                              PageTransition(child: Ottmore(), type: PageTransitionType.rightToLeft));



                                        },
                                      ),],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,



                                    child: ListView.builder(

                                      shrinkWrap: true,

                                      itemCount: limg.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limg[index].image),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text("Thriller Movies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      Text("more >",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,



                                    child: ListView.builder(
                                      reverse: true,
                                      shrinkWrap: true,

                                      itemCount: limgone.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limgone[index].images),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )

                        ),
                        Container(
                          height: double.infinity,
                          width: double.infinity,


                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Kids and Family ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      Text("more >",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,



                                    child: ListView.builder(

                                      shrinkWrap: true,

                                      itemCount: limg.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limg[index].image),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Top Rated TV shows",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,



                                    child: ListView.builder(
                                      reverse: true,
                                      shrinkWrap: true,

                                      itemCount: limgone.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limgone[index].images),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text("Most Popular",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Spacer(),
                                      Text("more >",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 500,
                                    width: double.infinity,


                                    decoration: BoxDecoration(


                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(5)

                                    ),
                                    child: GridView.builder(
                                      scrollDirection: Axis.horizontal,
                                       // physics: NeverScrollableScrollPhysics(),
                                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 300,
                                            mainAxisExtent: 200,

                                            childAspectRatio: 5/4.9,
                                            crossAxisSpacing: 10,

                                            mainAxisSpacing:2),
                                        shrinkWrap: true,
                                        itemCount: limgone.length,
                                        itemBuilder: (BuildContext ctx, index) {
                                          return Column(
                                            children: [

                                              Padding(
                                                padding: const EdgeInsets.all(1.0),

                                                child: Container(
                                                  height: 200,

                                                  decoration: BoxDecoration(

                                                    borderRadius: BorderRadius.circular(10),
                                                    image: DecorationImage(

                                                      image: AssetImage(limgone[index].images),fit: BoxFit.fill,),),


                                                ),
                                              ),
                                              SizedBox(height: 20,
                                              child: Text(limgone[index].text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),),




                                            ],
                                          );
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Recently Added",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: double.infinity,



                                    child: ListView.builder(
                                      reverse: true,
                                      shrinkWrap: true,

                                      itemCount: limgone.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext,index )
                                      {
                                        return Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),

                                              image: DecorationImage(image: AssetImage(limgone[index].images),
                                                  fit: BoxFit.fill),
                                            ),


                                          ),
                                        );
                                      },

                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),






                      ]
                  ),),

          ),
          //

        ),
      ),
    );
  }
}
