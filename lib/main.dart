import 'package:disenos/screens/home_screens.dart';
import 'package:flutter/material.dart';
import 'package:disenos/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screens',
      routes: {
        'basic_design' : (_) => BasicDesignScreen(),
        'scroll_design' : (_) => ScrollDesignScreen(),
        'home_screens' : (_) => HomeScreen(),
      },
      
    );
  }
}

