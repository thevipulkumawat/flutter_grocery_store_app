import 'package:flutter/material.dart';
import 'package:grocery_store_ui/Pages/ItemPage.dart';
import 'package:grocery_store_ui/Pages/homepage.dart';
import 'package:grocery_store_ui/Pages/splashscreen.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => SplashScreen(),
        "homepage" : (context) => HomePage(),
        "itempage" : (context) => ItemPage(),
      },

    );
    
  }
}