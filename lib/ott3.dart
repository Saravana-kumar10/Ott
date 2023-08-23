import 'package:dem/ottdoc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sticky_headers/sticky_headers.dart';

import 'color.dart';


class Ottthr extends StatefulWidget {
  const Ottthr({super.key});

  @override
  State<Ottthr> createState() => _OttthrState();
}

class _OttthrState extends State<Ottthr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body:NestedScrollView(
           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        {
        return[
        SliverAppBar(
        excludeHeaderSemantics: true,

        floating: false,
        automaticallyImplyLeading: false,
        shadowColor: Colors.white10,





        pinned: true,

        toolbarHeight: 50,
        backgroundColor: Colors.black,


        bottom:PreferredSize(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                width: 350,

                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Movies,Shows and more.......",
                    hintStyle: TextStyle(color: Colors.white54),
                    fillColor: Colors.white24,
                    filled: true,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search,size: 20,),
                    prefixIconColor: Colors.white,
                    suffixIcon: Icon(Icons.mic,size: 20,),
                    suffixIconColor: Colors.white,
                  ),


                ),),
            ),
            preferredSize: Size.fromHeight(20)),
        )
        ];
        },
         body: StickyHeader(
           header: Text("     Popular Searches",style: GoogleFonts.albertSans(textStyle: TextStyle(fontSize: 20),)),
             content: ListView.builder(

             itemCount: limgone.length,
             scrollDirection: Axis.vertical,

             itemBuilder: (BuildContext context,int index){
               return ListTile(
                 visualDensity: VisualDensity(vertical: 4),


                 title: Row(
                   children: [
                     Container(
                       height: 200,
                       width: 200,
                       decoration: BoxDecoration(
                           border: Border.all(),
                           borderRadius:BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage(limgone[index].images),fit: BoxFit.fill)
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(


                           child: Column(
                             children: [
                               Text(limgone[index].text,style:GoogleFonts.aBeeZee(textStyle: TextStyle(color: black),fontSize: 25)),
                               Text(tltxt[index].stl,style:GoogleFonts.abhayaLibre(textStyle:  TextStyle(color: black),fontSize: 19)),
                             ],
                           )),
                     ),
                   ],
                 ) ,

                 trailing: Padding(
                   padding: const EdgeInsets.only(top: 70),
                   child: Icon(Icons.arrow_forward,),
                 ),
               );

             },

           ),
         ),
         //    Column(
        //      crossAxisAlignment:CrossAxisAlignment.start,
        //      children: [
        //      Text("  Popular Searches",style: TextStyle(fontSize: 20,color: Colors.black),),
        //
        //
        //
        //
        //   ],
        // )
    )
    );
  }
}
