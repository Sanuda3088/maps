import 'package:flutter/material.dart';
import 'package:maps/full_map.dart';
import 'package:maps/polylines/point01/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_01.dart';
import 'package:maps/polylines/point01/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_02.dart';
import 'package:maps/polylines/point01/Aggra%20Falls/sp01aggra_01.dart';
import 'package:maps/polylines/point01/Aggra%20Falls/sp01aggra_02.dart';
import 'package:maps/polylines/point01/Bakers%20Falls/sp01backers_01.dart';
import 'package:maps/polylines/point01/Bakers%20Falls/sp01backers_02.dart';
import 'package:maps/polylines/point01/Bakers%20Falls/sp01backers_03.dart';
import 'package:maps/polylines/point01/Galagama%20Falls/sp01galagama_01.dart';
import 'package:maps/polylines/point01/Galagama%20Falls/sp01galagama_02.dart';
import 'package:maps/polylines/point01/Newzealand%20Farm/sp01newz_01.dart';
import 'package:maps/polylines/point01/Newzealand%20Farm/sp01newz_02.dart';
import 'package:maps/polylines/point01/Newzealand%20Farm/sp01newz_03.dart';
import 'package:maps/polylines/point01/View%20Point%2001/sp01vp_01.dart';
import 'package:maps/polylines/point01/View%20Point%2001/sp01vp_02.dart';
import 'package:maps/polylines/point01/View%20Point%2001/sp01vp_03.dart';
import 'package:maps/polylines/point01/View%20Point%2002/sp01vp2_01.dart';
import 'package:maps/polylines/point01/View%20Point%2002/sp01vp2_02.dart';
import 'package:maps/polylines/point01/View%20Point%2002/sp01vp2_03.dart';
import 'package:maps/polylines/poly02.dart';
import 'package:maps/polylines/poly01.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';




void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocationProvider()),
        ChangeNotifierProvider(create: (context) => LocationProvider1()),
        ChangeNotifierProvider(create: (context) => LocationProvider2()),
        ChangeNotifierProvider(create: (context) => LocationProvider3()),
        ChangeNotifierProvider(create: (context) => LocationProvider4()),
        ChangeNotifierProvider(create: (context) => LocationProvider5()),
        ChangeNotifierProvider(create: (context) => LocationProvider6()),
        ChangeNotifierProvider(create: (context) => LocationProvider7()),
        ChangeNotifierProvider(create: (context) => LocationProvider8()),
        ChangeNotifierProvider(create: (context) => LocationProvider9()),
        ChangeNotifierProvider(create: (context) => LocationProvider10()),
        ChangeNotifierProvider(create: (context) => LocationProvider11()),
        ChangeNotifierProvider(create: (context) => LocationProvider12()),
        ChangeNotifierProvider(create: (context) => LocationProvider13()),
        ChangeNotifierProvider(create: (context) => LocationProvider14()),
        ChangeNotifierProvider(create: (context) => LocationProvider15()),
        ChangeNotifierProvider(create: (context) => LocationProvider16()),
        ChangeNotifierProvider(create: (context) => LocationProvider17()),
        ChangeNotifierProvider(create: (context) => LocationProvider18()),
        ChangeNotifierProvider(create: (context) => LocationProvider19()),
        ChangeNotifierProvider(create: (context) => LocationProvider20()),
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
        brightness: Brightness.dark,
        primarySwatch: Colors.orange
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


