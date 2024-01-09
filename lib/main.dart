import 'package:flutter/material.dart';
import 'package:maps/controllers/full_map.dart';
import 'package:maps/polylines/point01/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_01.dart';
import 'package:maps/polylines/point01/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_02.dart';
import 'package:maps/polylines/point01/Aggra%20Falls/sp01aggra_01.dart';
import 'package:maps/polylines/point01/Aggra%20Falls/sp01aggra_02.dart';
import 'package:maps/polylines/point01/Ambewela%20Farm/sp01a_01.dart';
import 'package:maps/polylines/point01/Ambewela%20Farm/sp01a_02.dart';
import 'package:maps/polylines/point01/Bakers%20Falls/sp01backers_01.dart';
import 'package:maps/polylines/point01/Bakers%20Falls/sp01backers_02.dart';
import 'package:maps/polylines/point01/Bakers%20Falls/sp01backers_03.dart';
import 'package:maps/polylines/point01/Galagama%20Falls/sp01galagama_01.dart';
import 'package:maps/polylines/point01/Galagama%20Falls/sp01galagama_02.dart';
import 'package:maps/polylines/point01/Great%20Worlds%20End%20Drop/sp01we_01.dart';
import 'package:maps/polylines/point01/Great%20Worlds%20End%20Drop/sp01we_02.dart';
import 'package:maps/polylines/point01/Great%20Worlds%20End%20Drop/sp01we_03.dart';
import 'package:maps/polylines/point01/Kirigalpoththa%20Mountain%20Peak/sp01k_01.dart';
import 'package:maps/polylines/point01/Kirigalpoththa%20Mountain%20Peak/sp01k_02.dart';
import 'package:maps/polylines/point01/Mini%20Worlds%20End%20Drop/sp01mwe_02.dart';
import 'package:maps/polylines/point01/Mini%20Worlds%20End%20Drop/sp01mwe_03.dart';
import 'package:maps/polylines/point01/Newzealand%20Farm/sp01newz_01.dart';
import 'package:maps/polylines/point01/Newzealand%20Farm/sp01newz_02.dart';
import 'package:maps/polylines/point01/Newzealand%20Farm/sp01newz_03.dart';
import 'package:maps/polylines/point01/View%20Point%2001/sp01vp_01.dart';
import 'package:maps/polylines/point01/View%20Point%2001/sp01vp_02.dart';
import 'package:maps/polylines/point01/View%20Point%2001/sp01vp_03.dart';
import 'package:maps/polylines/point01/View%20Point%2002/sp01vp2_01.dart';
import 'package:maps/polylines/point01/View%20Point%2002/sp01vp2_02.dart';
import 'package:maps/polylines/point01/View%20Point%2002/sp01vp2_03.dart';
import 'package:maps/controllers/poly02.dart';
import 'package:maps/controllers/poly01.dart';
import 'package:maps/polylines/point02/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_01.dart';
import 'package:maps/polylines/point02/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_02.dart';
import 'package:maps/polylines/point02/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_03.dart';
import 'package:maps/polylines/point02/Aggra%20Falls/sp01aggra_01.dart';
import 'package:maps/polylines/point02/Aggra%20Falls/sp01aggra_02.dart';
import 'package:maps/polylines/point02/Aggra%20Falls/sp01aggra_03.dart';
import 'package:maps/polylines/point02/Ambewela%20Farm/sp01a_01.dart';
import 'package:maps/polylines/point02/Ambewela%20Farm/sp01a_02.dart';
import 'package:maps/polylines/point02/Bakers%20Falls/sp01backers_01.dart';
import 'package:maps/polylines/point02/Bakers%20Falls/sp01backers_02.dart';
import 'package:maps/polylines/point02/Bakers%20Falls/sp01backers_03.dart';
import 'package:maps/polylines/point02/Galagama%20Falls/sp01galagama_01.dart';
import 'package:maps/polylines/point02/Galagama%20Falls/sp01galagama_02.dart';
import 'package:maps/polylines/point02/Galagama%20Falls/sp01galagama_03.dart';
import 'package:maps/polylines/point02/Great%20Worlds%20End%20Drop/sp01we_01.dart';
import 'package:maps/polylines/point02/Great%20Worlds%20End%20Drop/sp01we_02.dart';
import 'package:maps/polylines/point02/Great%20Worlds%20End%20Drop/sp01we_03.dart';
import 'package:maps/polylines/point02/Kirigalpoththa%20Mountain%20Peak/sp01k_01.dart';
import 'package:maps/polylines/point02/Kirigalpoththa%20Mountain%20Peak/sp01k_02.dart';
import 'package:maps/polylines/point02/Kirigalpoththa%20Mountain%20Peak/sp01k_03.dart';
import 'package:maps/polylines/point02/Mini%20Worlds%20End%20Drop/sp01mwe_01.dart';
import 'package:maps/polylines/point02/Mini%20Worlds%20End%20Drop/sp01mwe_02.dart';
import 'package:maps/polylines/point02/Mini%20Worlds%20End%20Drop/sp01mwe_03.dart';
import 'package:maps/polylines/point02/Newzealand%20Farm/sp01newz_01.dart';
import 'package:maps/polylines/point02/Newzealand%20Farm/sp01newz_02.dart';
import 'package:maps/polylines/point02/Newzealand%20Farm/sp01newz_03.dart';
import 'package:maps/polylines/point02/View%20Point%2001/sp01vp_01.dart';
import 'package:maps/polylines/point02/View%20Point%2001/sp01vp_02.dart';
import 'package:maps/polylines/point02/View%20Point%2001/sp01vp_03.dart';
import 'package:maps/polylines/point02/View%20Point%2002/sp01vp2_02.dart';
import 'package:maps/polylines/point02/View%20Point%2002/sp01vp2_03.dart';
import 'package:maps/polylines/point03/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_01.dart';
import 'package:maps/polylines/point03/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_02.dart';
import 'package:maps/polylines/point03/Aggra%20Falls/sp01aggra_01.dart';
import 'package:maps/polylines/point03/Aggra%20Falls/sp01aggra_02.dart';
import 'package:maps/polylines/point03/Ambewela%20Farm/sp01a_01.dart';
import 'package:maps/polylines/point03/Bakers%20Falls/sp01backers_01.dart';
import 'package:maps/polylines/point03/Bakers%20Falls/sp01backers_02.dart';
import 'package:maps/polylines/point03/Galagama%20Falls/sp01galagama_01.dart';
import 'package:maps/polylines/point03/Galagama%20Falls/sp01galagama_02.dart';
import 'package:maps/polylines/point03/Galagama%20Falls/sp01galagama_03.dart';
import 'package:maps/polylines/point03/Great%20Worlds%20End%20Drop/sp01we_01.dart';
import 'package:maps/polylines/point03/Great%20Worlds%20End%20Drop/sp01we_02.dart';
import 'package:maps/polylines/point03/Great%20Worlds%20End%20Drop/sp01we_03.dart';
import 'package:maps/polylines/point03/Kirigalpoththa%20Mountain%20Peak/sp01k_01.dart';
import 'package:maps/polylines/point03/Kirigalpoththa%20Mountain%20Peak/sp01k_02.dart';
import 'package:maps/polylines/point03/Kirigalpoththa%20Mountain%20Peak/sp01k_03.dart';
import 'package:maps/polylines/point03/Mini%20Worlds%20End%20Drop/sp01mwe_01.dart';
import 'package:maps/polylines/point03/Mini%20Worlds%20End%20Drop/sp01mwe_02.dart';
import 'package:maps/polylines/point03/Newzealand%20Farm/sp01newz_01.dart';
import 'package:maps/polylines/point03/Newzealand%20Farm/sp01newz_02.dart';
import 'package:maps/polylines/point03/View%20Point%2001/sp01vp_01.dart';
import 'package:maps/polylines/point03/View%20Point%2001/sp01vp_02.dart';
import 'package:maps/polylines/point03/View%20Point%2001/sp01vp_03.dart';
import 'package:maps/polylines/point03/View%20Point%2002/sp01vp2_01.dart';
import 'package:maps/polylines/point03/View%20Point%2002/sp01vp2_02.dart';
import 'package:maps/polylines/point04/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_01.dart';
import 'package:maps/polylines/point04/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_02.dart';
import 'package:maps/polylines/point04/Aggra%20Falls/sp01aggra_01.dart';
import 'package:maps/polylines/point04/Aggra%20Falls/sp01aggra_02.dart';
import 'package:maps/polylines/point04/Ambewela%20Farm/sp01a_01.dart';
import 'package:maps/polylines/point04/Ambewela%20Farm/sp01a_02.dart';
import 'package:maps/polylines/point04/Bakers%20Falls/sp01backers_01.dart';
import 'package:maps/polylines/point04/Bakers%20Falls/sp01backers_02.dart';
import 'package:maps/polylines/point04/Galagama%20Falls/sp01galagama_01.dart';
import 'package:maps/polylines/point04/Galagama%20Falls/sp01galagama_02.dart';
import 'package:maps/polylines/point04/Galagama%20Falls/sp01galagama_03.dart';
import 'package:maps/polylines/point04/Great%20Worlds%20End%20Drop/sp01we_01.dart';
import 'package:maps/polylines/point04/Great%20Worlds%20End%20Drop/sp01we_02.dart';
import 'package:maps/polylines/point04/Kirigalpoththa%20Mountain%20Peak/sp01k_01.dart';
import 'package:maps/polylines/point04/Kirigalpoththa%20Mountain%20Peak/sp01k_02.dart';
import 'package:maps/polylines/point04/Mini%20Worlds%20End%20Drop/sp01mwe_01.dart';
import 'package:maps/polylines/point04/Newzealand%20Farm/sp01newz_01.dart';
import 'package:maps/polylines/point04/Newzealand%20Farm/sp01newz_02.dart';
import 'package:maps/polylines/point04/View%20Point%2001/sp01vp_01.dart';
import 'package:maps/polylines/point04/View%20Point%2001/sp01vp_02.dart';
import 'package:maps/polylines/point04/View%20Point%2002/sp01vp2_01.dart';
import 'package:maps/polylines/point04/View%20Point%2002/sp01vp2_02.dart';
import 'package:provider/provider.dart';
import 'controllers/homepage.dart';




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
        ChangeNotifierProvider(create: (context) => LocationProvider22()),
        ChangeNotifierProvider(create: (context) => LocationProvider23()),
        ChangeNotifierProvider(create: (context) => LocationProvider24()),
        ChangeNotifierProvider(create: (context) => LocationProvider25()),
        ChangeNotifierProvider(create: (context) => LocationProvider26()),
        ChangeNotifierProvider(create: (context) => LocationProvider27()),
        ChangeNotifierProvider(create: (context) => LocationProvider28()),
        ChangeNotifierProvider(create: (context) => LocationProvider29()),
        ChangeNotifierProvider(create: (context) => LocationProvider30()),
        ChangeNotifierProvider(create: (context) => LocationProvider31()),
        ChangeNotifierProvider(create: (context) => LocationProvider32()),
        ChangeNotifierProvider(create: (context) => LocationProvider33()),
        ChangeNotifierProvider(create: (context) => LocationProvider34()),
        ChangeNotifierProvider(create: (context) => LocationProvider35()),
        ChangeNotifierProvider(create: (context) => LocationProvider36()),
        ChangeNotifierProvider(create: (context) => LocationProvider37()),
        ChangeNotifierProvider(create: (context) => LocationProvider38()),
        ChangeNotifierProvider(create: (context) => LocationProvider39()),
        ChangeNotifierProvider(create: (context) => LocationProvider40()),
        ChangeNotifierProvider(create: (context) => LocationProvider41()),
        ChangeNotifierProvider(create: (context) => LocationProvider42()),
        ChangeNotifierProvider(create: (context) => LocationProvider43()),
        ChangeNotifierProvider(create: (context) => LocationProvider44()),
        ChangeNotifierProvider(create: (context) => LocationProvider45()),
        ChangeNotifierProvider(create: (context) => LocationProvider46()),
        ChangeNotifierProvider(create: (context) => LocationProvider47()),
        ChangeNotifierProvider(create: (context) => LocationProvider48()),
        ChangeNotifierProvider(create: (context) => LocationProvider49()),
        ChangeNotifierProvider(create: (context) => LocationProvider50()),
        ChangeNotifierProvider(create: (context) => LocationProvider51()),
        ChangeNotifierProvider(create: (context) => LocationProvider52()),
        ChangeNotifierProvider(create: (context) => LocationProvider53()),
        ChangeNotifierProvider(create: (context) => LocationProvider54()),
        ChangeNotifierProvider(create: (context) => LocationProvider55()),
        ChangeNotifierProvider(create: (context) => LocationProvider56()),
        ChangeNotifierProvider(create: (context) => LocationProvider57()),
        ChangeNotifierProvider(create: (context) => LocationProvider58()),
        ChangeNotifierProvider(create: (context) => LocationProvider59()),
        ChangeNotifierProvider(create: (context) => LocationProvider60()),
        ChangeNotifierProvider(create: (context) => LocationProvider61()),
        ChangeNotifierProvider(create: (context) => LocationProvider62()),
        ChangeNotifierProvider(create: (context) => LocationProvider63()),
        ChangeNotifierProvider(create: (context) => LocationProvider64()),
        ChangeNotifierProvider(create: (context) => LocationProvider65()),
        ChangeNotifierProvider(create: (context) => LocationProvider66()),
        ChangeNotifierProvider(create: (context) => LocationProvider67()),
        ChangeNotifierProvider(create: (context) => LocationProvider68()),
        ChangeNotifierProvider(create: (context) => LocationProvider69()),
        ChangeNotifierProvider(create: (context) => LocationProvider70()),
        ChangeNotifierProvider(create: (context) => LocationProvider71()),
        ChangeNotifierProvider(create: (context) => LocationProvider72()),
        ChangeNotifierProvider(create: (context) => LocationProvider73()),
        ChangeNotifierProvider(create: (context) => LocationProvider74()),
        ChangeNotifierProvider(create: (context) => LocationProvider75()),
        ChangeNotifierProvider(create: (context) => LocationProvider76()),
        ChangeNotifierProvider(create: (context) => LocationProvider77()),
        ChangeNotifierProvider(create: (context) => LocationProvider78()),
        ChangeNotifierProvider(create: (context) => LocationProvider79()),
        ChangeNotifierProvider(create: (context) => LocationProvider80()),
        ChangeNotifierProvider(create: (context) => LocationProvider81()),
        ChangeNotifierProvider(create: (context) => LocationProvider82()),
        ChangeNotifierProvider(create: (context) => LocationProvider83()),
        ChangeNotifierProvider(create: (context) => LocationProvider84()),
        ChangeNotifierProvider(create: (context) => LocationProvider85()),
        ChangeNotifierProvider(create: (context) => LocationProvider86()),
        ChangeNotifierProvider(create: (context) => LocationProvider87()),
        ChangeNotifierProvider(create: (context) => LocationProvider88()),
        ChangeNotifierProvider(create: (context) => LocationProvider89()),
        ChangeNotifierProvider(create: (context) => LocationProvider90()),
        ChangeNotifierProvider(create: (context) => LocationProvider91()),
        ChangeNotifierProvider(create: (context) => LocationProvider92()),
        ChangeNotifierProvider(create: (context) => LocationProvider93()),
        ChangeNotifierProvider(create: (context) => LocationProvider94()),
        ChangeNotifierProvider(create: (context) => LocationProvider95()),
        ChangeNotifierProvider(create: (context) => LocationProvider96()),
        ChangeNotifierProvider(create: (context) => LocationProvider97()),
        ChangeNotifierProvider(create: (context) => LocationProvider98()),
        ChangeNotifierProvider(create: (context) => LocationProvider99()),
        ChangeNotifierProvider(create: (context) => LocationProvider100()),
        ChangeNotifierProvider(create: (context) => LocationProvider101()),
        ChangeNotifierProvider(create: (context) => LocationProvider102()),
        ChangeNotifierProvider(create: (context) => LocationProvider103()),
        ChangeNotifierProvider(create: (context) => LocationProvider104()),
        ChangeNotifierProvider(create: (context) => LocationProvider105()),
        ChangeNotifierProvider(create: (context) => LocationProvider106()),
        ChangeNotifierProvider(create: (context) => LocationProvider107()),
        ChangeNotifierProvider(create: (context) => LocationProvider108()),
        //ChangeNotifierProvider(create: (context) => LocationProvider109()),

        //ChangeNotifierProvider(create: (context) => LocationProvider62()),
        //ChangeNotifierProvider(create: (context) => LocationProvider63()),
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


