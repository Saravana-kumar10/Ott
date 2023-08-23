

import 'package:dem/color.dart';
import 'package:dem/ottnav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lit_starfield/view/lit_starfield_container.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Otl extends StatefulWidget {
  const Otl({super.key});

  @override
  State<Otl> createState() => _OtlState();
}

class _OtlState extends State<Otl> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false), //<-- SEE HERE
            child: new Text('No',style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true), // <-- SEE HERE
            child: new Text('Yes',style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
          ),
        ],
      ),
    )) ??
        false;
  }
  final gkey= GlobalKey<FormState>();
  final f =GlobalKey<FormState>();

  final txtname= TextEditingController();
  final txtpwd= TextEditingController();
  final pwd =TextEditingController();
  final rpwd =TextEditingController();


  late SharedPreferences logindata ;
  late bool logbool;


  @override
  void initState()
  {
    super.initState();
    log_check();


  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
     body:
      WillPopScope(
        onWillPop: _onWillPop ,
        child: GestureDetector(
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(

            children: [
              Stack(
                children:[
                  const LitStarfield(),
                  Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                child: Form(
                  key: gkey,
                  child: Center(
                    child: Container(
                      height: 300,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.8),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle,

                                    image: const DecorationImage(image: AssetImage("asset/ottsp.jpg"),fit: BoxFit.fill)

                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30,),
                              child: SizedBox(
                                height: 70,

                                child: TextFormField(
                                  controller: txtname,
                                  maxLines: 1,

                                    decoration: InputDecoration(

                                      errorStyle:TextStyle(color: reda,fontSize: 18) ,
                                      filled: true,
                                      fillColor: Colors.blueGrey,


                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                                      labelText: "name",
                                      prefixIcon: const Icon(Icons.person),
                                    ),
                                    keyboardType: TextInputType.text,

                                    validator: (value) {
                                      String? regx = r'^[a-z A-Z]';
                                      RegExp rgx = new RegExp(regx);

                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (!rgx.hasMatch(value)) {
                                        return 'use only alphabets';
                                      } else
                                        return null;
                                    }
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                              child: SizedBox(
                                height: 70,

                                child: TextFormField(
                                  controller: txtpwd,
                                  maxLines: 1,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      helperText: 'A number,special character,capital & small alphabets ',



                                      errorStyle:TextStyle(color: reda,fontSize: 18) ,
                                      filled: true,
                                      fillColor: Colors.blueGrey,
                                      border: OutlineInputBorder(

                                          borderRadius: BorderRadius.circular(50)),
                                      labelText: "Password",
                                      prefixIcon: const Icon(Icons.password),
                                    ),
                                    validator: (value) {
                                      String? pdkey=r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)';
                                      RegExp pkey = new RegExp(pdkey);
                                      if (value == null || value.isEmpty  ) {
                                        return 'Please enter some text';
                                      }
                                      else if (value.length <6) {
                                        return 'password must not be less than 6 char';
                                      }
                                      else if(value.length >=10)
                                      {
                                        return 'password must not more than 10';
                                      }
                                      else if(!pkey.hasMatch(value))
                                      { return 'enter a valid one';
                                      }
                                      return null;
                                    }

                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 120,right: 60,top: 10),
                              child: SizedBox(
                                height: 35,
                                width: 200,

                                child: Row(
                                  children: [
                                    ElevatedButton(onPressed: () {
                                      if(gkey.currentState!.validate())
                                            {
                                              logindata.setBool("login", false);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context)=>const Ottnav()));
                                              // Get.off(Ottnav());

                                              ScaffoldMessenger.of(context).showSnackBar(

                                                const SnackBar(content: Text('Welcome Enjoy ur Day',style: TextStyle(color: Colors.white,fontSize: 20),)),


                                              );}
                                      txtname.clear();
                                      txtpwd.clear();

                                      },
                                      child: const Center(child: Text("Log In",style: TextStyle(fontSize: 20,color: Colors.white60),)),
                                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black.withOpacity(.5),),
                                    ),
                                    TextButton(
                                        onPressed:(){




                                      showModalBottomSheet(context: context,
                                          backgroundColor: Colors.white70,
                                          shape:const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25))) ,
                                          builder: (BuildContext context){
                                        return SafeArea(
                                          child: SingleChildScrollView(
                                            child: Form(
                                              key: f,
                                              child: Container(
                                                height: 900,
                                                width: 300,
                                                child: Column(
                                                  children: [

                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Container(
                                                        height: 80,
                                                        width: 350,


                                                        child: Center(
                                                          child: TextFormField(



                                                              decoration: const InputDecoration(
                                                                  errorStyle: TextStyle(fontSize: 15),

                                                                  labelText: "*NAME",
                                                                  labelStyle: TextStyle(fontWeight: FontWeight.bold)

                                                              ),
                                                              keyboardType: TextInputType.text,

                                                              validator: (value) {
                                                                String? regx = r'^[a-z A-Z]';
                                                                RegExp rgx = new RegExp(regx);

                                                                if (value == null || value.isEmpty) {
                                                                  return 'Please enter some text';
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
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Container(
                                                        height: 80,
                                                        width: 350,
                                                        child: Center(
                                                          child: TextFormField(

                                                              decoration: const InputDecoration(
                                                                  errorStyle: TextStyle(fontSize: 15),
                                                                  helperText: '',
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
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Container(
                                                        height: 80,
                                                        width: 350,
                                                        child: Center(
                                                          child: TextFormField(

                                                              decoration: const InputDecoration(
                                                                  errorStyle: TextStyle(fontSize: 15),
                                                                  helperText: '',
                                                                  labelText: "Mobile-Number",
                                                                  labelStyle: TextStyle(fontWeight: FontWeight.bold)

                                                              ),
                                                              keyboardType: TextInputType.number,

                                                              validator: (value) {
                                                                String? regx =  r'^(?:[+0]9)?[0-9]{10}$';
                                                                RegExp rgx = new RegExp(regx);

                                                                if (value == null || value.isEmpty) {
                                                                  return 'Please enter some text';
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
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Container(
                                                        height: 80,
                                                        width: 350,
                                                        child: Center(
                                                          child: TextFormField(
                                                              controller: pwd,

                                                              decoration: const InputDecoration(
                                                                  helperText: 'password should contain a number,special character,\ncapital and small alphabets ',
                                                                  errorStyle: TextStyle(fontSize: 15),
                                                                  labelText: "Password",
                                                                  labelStyle: TextStyle(fontWeight: FontWeight.bold)

                                                              ),
                                                              keyboardType: TextInputType.text,

                                                              validator: (value) {
                                                                String? regx = r'^[a-z A-Z]';
                                                                RegExp rgx = new RegExp(regx);

                                                                if (value == null || value.isEmpty) {
                                                                  return 'Please enter Password';
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
                                                              controller: rpwd,
                                                              decoration: const InputDecoration(
                                                                  helperText: '',
                                                                  errorStyle: TextStyle(fontSize: 15),
                                                                  labelText: "Re-Enter Password",
                                                                  labelStyle: TextStyle(fontWeight: FontWeight.bold)

                                                              ),
                                                              keyboardType: TextInputType.text,

                                                              validator: (value) {

                                                                if (value == null || value.isEmpty) {
                                                                  return ' cannot be empty';
                                                                } else if (pwd.text!=rpwd.text) {
                                                                  return 'Please re-enter password correctly';
                                                                } else
                                                                  return null;
                                                              }
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    ElevatedButton(onPressed: (){
                                                      if(f.currentState!.validate())
                                                      {
                                                        ScaffoldMessenger.of(context).showSnackBar(

                                                          const SnackBar(content: Text('Created Sucessfully',style: TextStyle(color: Colors.white,fontSize: 20),)),

                                                        );


                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => const Ottnav()),
                                                        );




                                                      }
                                                    }, child: const Text("Create"),),
                                                    //Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))




                                                  ],
                                                ),                                    ),
                                            ),
                                          ),
                                        );

                                      });




                                        } , child: Text("Signup",style: TextStyle(color: reda,fontSize: 17),)),

                                  ],
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                    ),
                  ),
                ),
                  ),]
              ),
              Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
            ],
          ),
        ),
      ),
    );

  }
  void log_check() async{
    logindata= await SharedPreferences.getInstance();
    logbool= logindata.getBool("login")??true;
    if(logbool==false)
    {
      Navigator.pushReplacement(context,
          PageTransition(child: const Ottnav(), type: PageTransitionType.fade));
    }


  }
  void dispose()
  {txtpwd.dispose();
    txtname.dispose();
    logindata.remove("login");
    super.dispose();
  }


}













class LitStarfield extends StatelessWidget {
  const LitStarfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LitStarfieldContainer(
      animated: true,
      number: 500,
      velocity: 0.85,
      depth: 0.9,
      scale: 4,
      starColor: Colors.amber,
      backgroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF031936),
            Color(0xFF791818),
            Color(0xFF05294B),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}

