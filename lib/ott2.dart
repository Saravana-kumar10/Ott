
import 'package:dem/color.dart';
import 'package:dem/ottdoc.dart';
import 'package:dem/ottnav.dart';
import 'package:dem/videodoc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
class Otttwo extends StatefulWidget {
  const Otttwo({super.key});

  @override
  State<Otttwo> createState() => _OtttwoState();
}

class _OtttwoState extends State<Otttwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          
        ),
        child: Scaffold(

          body: DefaultTabController(
              length:2,
              child:Stack(
                children:[ Container(
                  height: double.infinity,
                  color:Theme.of(context).colorScheme.background,

                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 20),
                          child: SamplePlayer(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            maxLines: 3,
                            text: TextSpan(text: "Family | Entertainment",
                              style: GoogleFonts.adventPro(

                                textStyle:TextStyle(decorationStyle: TextDecorationStyle.wavy,fontSize: 20,color: Theme.of(context).colorScheme.onSurface) ,),
                            ),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReadMoreText(

                            'Director:Shakti Soundar Rajan \nWriters:Shakti Soundar RajanRajendra Sapre \nStars: AryaSayyeshaa SaigalSakshi AgarwalJohn Bennett \nA man whose childhood wish of bringing his teddy bear to life came true, now must decide between keeping the relationship with the bear, Ted or his girlfriend, Lori',
                            trimLines: 4,
                            colorClickableText: reda,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Show more',
                            trimExpandedText: 'Show less',
                            style: GoogleFonts.aBeeZee(
                                textStyle:TextStyle(fontSize: 17) ),

                            moreStyle: GoogleFonts.aBeeZee(
                                textStyle:TextStyle(color:blue ,fontSize: 17) ),
                          ),

                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("EPISODES",style: GoogleFonts.aBeeZee(fontSize: 20),),
                        ),

                        TabBar(
                          dividerColor: lg,
                          automaticIndicatorColorAdjustment: true,
                          indicatorColor: acnt,


                          isScrollable: true,
                            tabs: [
                              Text("Season1 ",style: GoogleFonts.aBeeZee(color:Theme.of(context).colorScheme.onSecondary,fontSize: 20),),
                              Text("Season2",style: GoogleFonts.aBeeZee(color:Theme.of(context).colorScheme.onSecondary,fontSize: 20),),
                            ]
                        ),
                        Container(height: 900,
                          child: TabBarView(children: [
                            ListView.builder(

                              itemCount: tltxt.length,

                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context,int index){
                                return ListTile(

                                  title:Row( children:[
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(image: AssetImage("asset/mv.jpg"),fit: BoxFit.fill)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),Text(tltxt[index].tl,)]),
                                    trailing: Icon(Icons.more_vert),
                                );
                              },

                            ),
                            ListView.builder(itemCount: tltxt.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context,int index){
                                return ListTile(

                                  title:Row( children:[
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(image: AssetImage("asset/mv.jpg"),fit: BoxFit.fill)
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),Text(tltxt[index].tl,)]),
                                  trailing: Icon(Icons.more_vert),
                                );
                              },

                            ),


                          ]),
                        ),


                      ],
                    ),
                  ),
                ),
                Positioned(child:
                IconButton(onPressed: ()
                {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Ottnav()),
                  );
                },
                    icon: Icon(Icons.arrow_back,size: 30,color: reda,)))]
              ),
        ),


        ),
      ),
    );
  }
}
