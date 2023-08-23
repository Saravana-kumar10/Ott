

import 'dart:io';
import 'package:dem/color.dart';
import 'package:dem/ott.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'otttheme.dart';

class Ottpro extends StatefulWidget {
  const Ottpro({super.key});



  @override
  State<Ottpro> createState() => _OttproState();
}

class _OttproState extends State<Ottpro> {
  double op=1.0;
  anima()
  {
    setState(() {

      var a=10;
      op=op==1? 0.3:1;
    });
  }
  late SharedPreferences logindata;
  late bool logb;
  void intial() async {
    logindata = await SharedPreferences.getInstance();
  }
  void initState(){
    super.initState();
    intial();
  }
  void showdialog()
  {
    showDialog(
      barrierDismissible: false,
        context: context,
        builder:(BuildContext context)
    {
      return AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to Log out'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false), //<-- SEE HERE
            child: new Text('No',style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
          ),
          TextButton(
            onPressed: () {
              logindata.setBool("login", true);
              Navigator.push(
                context,
                PageTransition(childCurrent: Ottpro(),child: Otl(), type: PageTransitionType.fade,duration: Duration(milliseconds: 900)),
              );
            }, // <-- SEE HERE
            child: new Text('Yes',style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
          ),
        ],
      );
    },
    );
  }
  void helpdialog()
  {
    showDialog(
      context: context,
      builder:(BuildContext context)
      {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          title:  Text('Help & Support'),
          content:  Container(
            height: 200,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Our Features",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  Divider(height: .1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("How to download",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  Divider(height: .1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Creating an account",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  Divider(height: .1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Trouble on devices",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  Divider(height: .1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Buffering & Quality releated",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  Divider(height: .1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Content Releated ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  Divider(height: .1,)
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), //<-- SEE HERE
              child: new Text('ok',style: TextStyle(fontSize: 20),),
            ),

          ],
        );
      },
    );
  }
  var _image;
  Future getImage(ImgSource source) async {
    var image = await ImagePickerGC.pickImage(
        enableCloseButton: true,
        closeIcon: Icon(
          Icons.close,
          color: Colors.red,
          size: 12,
        ),
        context: context,
        source: source,
        barrierDismissible: true,
        cameraIcon: Icon(
          Icons.camera_alt,
          color: Colors.red,
        ), //cameraIcon and galleryIcon can change. If no icon provided default icon will be present
        cameraText: Text(
          "From Camera",
          style: TextStyle(color: Colors.red),
        ),
        galleryText: Text(
          "From Gallery",
          style: TextStyle(color: Colors.blue),
        ));
    setState(() {
      _image = image;
    });
  }

   @override
  Widget build(BuildContext context) {

    final pitem=TextEditingController();
    final rpitem=TextEditingController();
    final skey=GlobalKey<FormState>();

    return SafeArea(
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

          actions: [
            GestureDetector(
              onTap: ()
              {
                helpdialog();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(child: Icon(Icons.help,size: 20,color: white,)),

                        TextSpan(text: '   Help',style: TextStyle(fontSize: 15,color: white)),

                      ]
                    ),
                ),
              ),
            )],

        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer.withOpacity(.7),
          elevation: 16,
          child: Column(
            children: [
              ListTile(

                onTap: (){ Provider.of<Thmnotfy>(context,listen: false).toogle();},

                leading: Icon(Icons.light),
                title: Text("Theme "),
                trailing: IconButton(onPressed: (){
                  Provider.of<Thmnotfy>(context,listen: false).toogle();

                }, icon: Icon(Icons.toggle_off)),
              ),
              Divider(height: 0.1,),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Accoount Settings "),
                trailing:   IconButton(onPressed: (){

                },
                  icon:  Icon(Icons.arrow_circle_right_outlined),),
              ),
              Divider(height: 0.1,),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Download Settings "),
                trailing:   IconButton(onPressed: (){

                },
                  icon:  Icon(Icons.arrow_circle_right_outlined),),
              ),
              Divider(height: 0.1,),
              ListTile(
                leading: Icon(Icons.lock_open_rounded),
                title: Text("Parental Controls "),
                trailing:  IconButton(onPressed: (){

                },
                  icon:  Icon(Icons.arrow_circle_right_outlined),),
              ),
              Divider(height: 0.1,),
              ListTile(
                onTap: (){
                  Fluttertoast.showToast(
                      msg: "Long press for Log out",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.SNACKBAR,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.blueGrey,
                      textColor: Colors.redAccent,
                      fontSize: 12.0
                  );
                },
                onLongPress: showdialog,
                leading: Icon(Icons.logout),
                title: Text("LogOUT"),
                trailing:  IconButton(onPressed: () {
                  logindata.setBool("login", true);



                  Navigator.pushReplacement(
                    context,
                   PageTransition(childCurrent: Ottpro(),child: Otl(), type: PageTransitionType.fade,duration: Duration(milliseconds: 900)),
                  );
                },
                    icon:  Icon(Icons.arrow_circle_right_outlined),),
              ),





            ],
          ),

        ),
        body: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  Spacer(),
                    TextButton(onPressed:(){
                      showModalBottomSheet(context: context,
                          useSafeArea: true,


                          backgroundColor: Theme.of(context).colorScheme.primaryContainer.withOpacity(.9),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)

                          ),
                          builder: (BuildContext context){
                            return SingleChildScrollView(
                              child: Form(
                                key: skey,
                                child: Container(
                                  height: 900,
                                  width: 300,

                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 80,
                                          width: 350,

                                          child: Center(
                                            child: TextFormField(


                                                decoration: InputDecoration(
                                                    errorStyle:TextStyle(color: reda,backgroundColor: Colors.black.withOpacity(.5),fontSize: 15) ,

                                                    helperText: '',
                                                    labelText: "*NAME",
                                                    labelStyle: TextStyle(fontWeight: FontWeight.bold)

                                                ),
                                                keyboardType: TextInputType.text,

                                                validator: (value) {
                                                  String? regx = r'^[a-z A-Z]';
                                                  RegExp rgx = new RegExp(regx);

                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter name';
                                                  } else if (!rgx.hasMatch(value)) {
                                                    return 'use only alphabets';
                                                  } else
                                                    return null;
                                                }
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 80,
                                          width: 350,
                                          child: Center(
                                            child: TextFormField(
                                                decoration: InputDecoration(
                                                    errorStyle:TextStyle(color: reda,backgroundColor: Colors.black.withOpacity(.5),fontSize: 15) ,
                                                    helperText: '.....@aaa.com',
                                                    labelText: "Mail-id",
                                                    labelStyle: TextStyle(fontWeight: FontWeight.bold)
                                                ),
                                                keyboardType: TextInputType.emailAddress,

                                                validator: (value) {
                                                  String? regx = r'\S+@\S+\.\S+';
                                                  RegExp rgx = new RegExp(regx);

                                                  if (value == null || value.isEmpty) {
                                                    return 'Please enter  mail-id';
                                                  } else if (!rgx.hasMatch(value)) {
                                                    return 'Enter valid one';
                                                  } else
                                                    return null;
                                                }
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 80,
                                          width: 350,
                                          child: Center(
                                            child: TextFormField(
                                                decoration: InputDecoration(
                                                    errorStyle:TextStyle(color: reda,backgroundColor: Colors.black.withOpacity(.5),fontSize: 15) ,
                                                    helperText: '',
                                                    labelText: "Mobile-Number",
                                                    labelStyle: TextStyle(fontWeight: FontWeight.bold)

                                                ),
                                                keyboardType: TextInputType.number,

                                                validator: (value) {
                                                  String? regx =  r'^(?:[+0]9)?[0-9]{10}$';
                                                  RegExp rgx = new RegExp(regx);

                                                  if (value == null || value.isEmpty) {
                                                    return 'Cannot be empty';
                                                  } else if (!rgx.hasMatch(value)) {
                                                    return 'Number Incorrect';
                                                  } else
                                                    return null;
                                                }
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 80,
                                          width: 350,
                                          child: Center(
                                            child: TextFormField(
                                              controller: pitem,
                                                decoration: InputDecoration(
                                                    helperText: 'A number,special charcter,small& captal letter',
                                                    errorStyle:TextStyle(color: reda,backgroundColor: Colors.black.withOpacity(.5),fontSize: 15) ,
                                                    labelText: "Password",
                                                    labelStyle: TextStyle(fontWeight: FontWeight.bold)

                                                ),
                                                keyboardType: TextInputType.text,

                                                validator: (value) {
                                                  String? regx = r'^[a-z A-Z]';
                                                  RegExp rgx = new RegExp(regx);

                                                  if (value == null || value.isEmpty) {
                                                    return 'Cannot be empty';
                                                  } else if (!rgx.hasMatch(value)) {
                                                    return 'Enter valid one';
                                                  } else
                                                    return null;
                                                }
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 80,
                                          width: 350,
                                          child: Center(
                                            child: TextFormField(
                                              controller: rpitem,
                                                decoration: InputDecoration(

                                                    errorStyle:TextStyle(color: reda,backgroundColor: Colors.black.withOpacity(.5),fontSize: 15) ,
                                                    labelText: "Re-Enter Password",
                                                    labelStyle: TextStyle(fontWeight: FontWeight.bold)

                                                ),
                                                keyboardType: TextInputType.text,

                                                validator: (value) {

                                                  if (value == null || value.isEmpty) {
                                                    return 'cannot be empty';
                                                  } else if (pitem.text!=rpitem.text) {
                                                    return 'Password incorrect ';
                                                  } else
                                                    return null;
                                                }
                                            ),
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(onPressed: (){
                                        if(skey.currentState!.validate())
                                        {
                                          ScaffoldMessenger.of(context).showSnackBar(

                                            const SnackBar(content: Text('Created',style: TextStyle(color: Colors.white,fontSize: 20),)),

                                          );


                                          Navigator.push(
                                            context,PageTransition(child: Ottpro(), type: PageTransitionType.fade,duration: Duration(seconds: 1))
                                          );



                                        }
                                      }, child: Text("Update",style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer),),
                                      style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context).colorScheme.onSecondary,
                                      ),)


                                    ],
                                  ),
                                ),
                              ),
                            );

                          });


                    },
                        child: Text("EDIT",style: TextStyle(backgroundColor: Colors.transparent,fontSize: 17,color: Theme.of(context).colorScheme.secondary,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 6.0,
                                color: Colors.black.withOpacity(0.8),
                              ),

                              //add more shadow with different position offset here
                            ])))
                  ],
                ),
              ),

              Stack(
                children:[
                  InkWell(
                  child: AnimatedOpacity(
                    duration: Duration(seconds: 3),
                    opacity: op,

                    child:Container(
                      height: 300,
                      width: 500,


                      child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: ClipOval(

                                child:SizedBox.fromSize(size: Size.fromRadius(150),
                                  child: _image != null ? Image.file(File(_image.path),fit: BoxFit.fill,) : Image(image: AssetImage("asset/mv.jpg"),fit: BoxFit.fill,),
                                )
                            ),
                          ),
                        ],
                      )
                    )
                  ),
                  onTap: ()=>anima(),
                ),
                  Positioned( bottom: 50,right: 60,
                      child:SpeedDial(
                        icon: Icons.add_a_photo,
                        activeIcon: Icons.close,
                        backgroundColor: Colors.transparent,
                        foregroundColor: Theme.of(context).colorScheme.onSecondary,
                        activeBackgroundColor: Colors.transparent,
                        activeForegroundColor: Theme.of(context).colorScheme.onSecondary,
                        visible: true,
                        closeManually: false,
                        curve: Curves.bounceIn,
                        overlayOpacity: 0.5,
                        elevation: 8.0,

                        shape: CircleBorder(),
                        children: [
                          SpeedDialChild( //speed dial child
                            child: Icon(Icons.image),
                            backgroundColor: reda.withOpacity(.5),
                            foregroundColor: Theme.of(context).colorScheme.onSecondary,
                            label: 'From gallery',
                            labelStyle: GoogleFonts.akayaTelivigala(),
                            onTap: () => getImage(ImgSource.Gallery),

                          ),
                          SpeedDialChild( //speed dial child
                            child: Icon(Icons.camera),
                            backgroundColor:  reda.withOpacity(.5),
                            foregroundColor: Theme.of(context).colorScheme.onSecondary,
                            label: 'From camera',
                            labelStyle:GoogleFonts.akayaTelivigala(),
                            onTap: () => getImage(ImgSource.Camera),

                          ),
                        ],
                      ) ),


                ]
              ),
              Divider(),
              Center(
                child: Container(width: 350,height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).colorScheme.primaryContainer,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,5),
                        color:org.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                      )
                    ]
                  ),
                  child: Center(
                    child: ListTile(
                      onTap:(){
                        Fluttertoast.showToast(
                            msg: "Press Edit  to change the name",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER_LEFT,
                            timeInSecForIosWeb: 2,
                            backgroundColor: bgrey,
                            textColor: Colors.redAccent,
                            fontSize: 12.0,


                        );
                      } ,


                      leading: Icon(Icons.person),
                      title: Text("Name"),
                      subtitle: Text(""),


                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Container(width: 350,height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,5),
                          color:org.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Center(
                    child: ListTile(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: "Press Edit  to change the E-mail id",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER_RIGHT,
                          timeInSecForIosWeb: 2,
                          backgroundColor:bgrey,
                          textColor: Colors.redAccent,
                          fontSize: 12.0,


                        );
                      } ,

                      leading: Icon(Icons.mail),
                      title: const Text("Email-id"),
                      subtitle: Text(""),


                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Container(width: 350,height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,5),
                          color:org.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Center(
                    child: ListTile(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: "Press Edit  to change Mobile Number",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER_RIGHT,
                          timeInSecForIosWeb: 2,
                          backgroundColor:bgrey,
                          textColor: Colors.redAccent,
                          fontSize: 12.0,


                        );
                      } ,

                      leading: Icon(Icons.phone_iphone_rounded),
                      title: const Text("Mobile.no"),
                      subtitle: Text(""),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Container(width: 350,height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,5),
                          color:org.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Center(
                    child: ListTile(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: "Press Edit  to change Password",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER_RIGHT,
                          timeInSecForIosWeb: 2,
                          backgroundColor:bgrey,
                          textColor: Colors.redAccent,
                          fontSize: 12.0,


                        );
                      } ,

                      leading: Icon(Icons.password),
                      title: const Text("Password"),
                      subtitle: Text(""),
                      trailing:Icon(Icons.visibility_off),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),



            ],
          ),
        ),

        ),
    );

  }
}
