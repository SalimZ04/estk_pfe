import 'package:estk_pfe/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:estk_pfe/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(debugShowCheckedModeBanner: false, 
    initialRoute: "/", routes: {
      
      "/": (context) => Welcome(),
    });
    
  }
}
