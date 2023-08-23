
import 'package:dem/color.dart';
import 'package:dem/ottdoc.dart';
import 'package:dem/ottnav.dart';
import 'package:dem/videodoc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:readmore/readmore.dart';
class Ottmore extends StatefulWidget {
  const Ottmore({super.key});

  @override
  State<Ottmore> createState() => _OttmoreState();
}

class _OttmoreState extends State<Ottmore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.background,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace:Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.tertiary,
                  ])
              ),

            ),

           leading: IconButton(onPressed: (){
             Navigator.pushReplacement(context, PageTransition(child: Ottnav(), type:PageTransitionType.leftToRight));
           }, icon: Icon(Icons.arrow_back,size: 25,)),

          ),
          body:  Container(
                height: double.infinity,

                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(

                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150,

                          childAspectRatio: 3/4,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5),
                      shrinkWrap: true,
                      itemCount: limg.length,


                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(image: AssetImage(limg[index].image),fit: BoxFit.fill,),),


                        );
                      }
                  ),
                ),
              ),




        ),
      ),
    );
  }
}
