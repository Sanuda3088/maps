import 'package:flutter/material.dart';
import 'package:maps/map.dart';
import 'package:maps/polylines/constant.dart';
import 'package:maps/polylines/poly01.dart';
import 'package:maps/polylines/poly02.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocationProvider()),
        ChangeNotifierProvider(create: (context) => LocationProvider1()),
        ChangeNotifierProvider(create: (context) => LocationProvider2()),
        // Add other providers if needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


