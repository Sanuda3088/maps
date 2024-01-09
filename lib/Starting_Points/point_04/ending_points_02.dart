import 'package:flutter/material.dart';
import 'package:maps/controllers/map_tile.dart';
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


class EndingPoints04 extends StatefulWidget {
  const EndingPoints04({super.key});

  @override
  State<EndingPoints04> createState() => _EndingPoints04State();
}

class _EndingPoints04State extends State<EndingPoints04> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Starting Points 02"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Galagama Falls
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Galagama Falls",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp04galagama_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp04galagama_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp04galagama_03Page()),
                          );
                        },
                      ),
                    ]),
                  ),
                ),
              ],
            ),

            //Baker's Falls
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Baker's Falls",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp04backers_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp04backers_02Page()),
                          );
                        },
                      ),
                    ]),
                  ),
                ),
              ],
            ),

            //Aggra Falls
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Aggra Falls",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04aggra_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04aggra_02Page()),
                          );
                        },
                      ),
                    ]),
                  ),
                ),
              ],
            ),

            //Newzealand Farm
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Newzealand Farm",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04newz_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04newz_02Page()),
                          );
                        },
                      ),
                    ]),
                  ),
                ),
              ],
            ),

            //Ambewela Farm
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Ambewela Farm",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04a_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04a_02Page()),
                          );
                        },
                      ),
                    ]),
                  ),
                ),
              ],
            ),

            //Great World's End Drop
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Great World's End Drop",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04we_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04we_02Page()),
                          );
                        },
                      ),
                      /*MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04we_03Page()),
                          );
                        },
                      )*/
                    ]),
                  ),
                ),
              ],
            ),

            //Aggra Bopath Mountain Peak
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Aggra Bopath Mountain Peak",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp04bopath_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp04bopath_02Page()),
                          );
                        },
                      ),
                    ]),
                  ),
                ),
              ],
            ),

            //Kirigalpoththa Mountain Peak
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Kirigalpoththa Mountain Peak",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04k_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04k_02Page()),
                          );
                        },
                      ),
                      /*MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04k_03Page()),
                          );
                        },
                      ),*/
                    ]),
                  ),
                ),
              ],
            ),

            //Mini World's End Drop
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Mini World's End Drop",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04mwe_01Page()),
                          );
                        },
                      ),
                      /*MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04mwe_02Page()),
                          );
                        },
                      ),*/
                    ]),
                  ),
                ),
              ],
            ),

            //View Point 01
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " View Point 01",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04vp_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04vp_02Page()),
                          );
                        },
                      ),
                      /*MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04vp_03Page()),
                          );
                        },
                      )*/
                    ]),
                  ),
                ),
              ],
            ),

            //View Point 02
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " View Point 02",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      MapTile(
                        pathName: "A",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04vp2_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp04vp2_02Page()),
                          );
                        },
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*void section(){
    return
  }*/
}
