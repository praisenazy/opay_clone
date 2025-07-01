import 'package:flutter/material.dart';
import 'package:online_banking_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 219, 236, 229),
        fontFamily: 'Lato',

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.greenAccent,
          brightness: Brightness.light,
          primary: Colors.greenAccent,
          secondary: Colors.green,
        ),
        iconTheme: const IconThemeData(color: Colors.black, size: 50),
      ),

      debugShowCheckedModeBanner: false,
      home: OpayAppPage(),
    );
  }
}
