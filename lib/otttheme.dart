import 'package:dem/color.dart';
import 'package:flutter/material.dart';

class Thmnotfy with ChangeNotifier{
  ThemeData crntthm  =  Apthm.lightthm;
ThemeData get currentTheme=>crntthm;


  void toogle(){
    crntthm=
    (crntthm==Apthm.lightthm )? Apthm.drkthm : Apthm.lightthm;
    notifyListeners();

  }

}
class Apthm {
  static final lightthm=ThemeData(

    brightness: Brightness.light,
    scaffoldBackgroundColor:Colors.white60,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: Colors.red,
        ),
        unselectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
            color: Colors.black,
        ),


      ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red.withOpacity(.1),
    ),
      colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        primary: Colors.blue,
        onPrimary: black,
        onSurface: Colors.black87,


        secondary: Colors.black,
        onSecondary: Colors.black,
        tertiary: Colors.blue,

        primaryContainer: Colors.white,
        background: Colors.grey,
        )




  );
  static final drkthm=ThemeData(



      brightness: Brightness.dark,

      scaffoldBackgroundColor: Colors.black,
 indicatorColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: Colors.red,
        ),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          color: Colors.white
        ),

      ),
      appBarTheme: AppBarTheme(
        color: Colors.black26,
      ),
colorScheme: ColorScheme(
  brightness: Brightness.dark,
  primary: Colors.black,
  onPrimary: Colors.white,
  secondary: Colors.blue,
  onSecondary: Colors.white,
  primaryContainer: Colors.black,
  error: Colors.black,
  onError: Colors.white,
  background: Colors.black,
  tertiary: Colors.black,
  onBackground: Colors.white,
  surface: Colors.black,
  onSurface: Colors.red,)
  );
}