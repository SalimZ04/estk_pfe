import 'package:estk_pfe/pages/loginpages/login_page_admin.dart';
import 'package:estk_pfe/pages/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAEPYi0yA4zwrVLeofpEC5VvbhgyWaEpBE",
          projectId: "estk-pfe",
          messagingSenderId: "837017476705",
          appId: "1:837017476705:web:844053c31d845658ced420"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => Welcome(),
          "/Login": (context) => const LoginAdminScreen(),
        });
  }
}
