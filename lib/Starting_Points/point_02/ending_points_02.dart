import 'package:flutter/material.dart';
import 'package:maps/controllers/map_tile.dart';
import 'package:maps/polylines/point02/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_01.dart';
import 'package:maps/polylines/point02/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_02.dart';
import 'package:maps/polylines/point02/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_03.dart';
import 'package:maps/polylines/point02/Aggra%20Falls/sp01aggra_01.dart';
import 'package:maps/polylines/point02/Aggra%20Falls/sp01aggra_02.dart';
import 'package:maps/polylines/point02/Aggra%20Falls/sp01aggra_03.dart';
import 'package:maps/polylines/point02/Aggra%20Falls/sp01aggra_04.dart';
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
import 'package:maps/polylines/point02/View%20Point%2002/sp01vp2_01.dart';
import 'package:maps/polylines/point02/View%20Point%2002/sp01vp2_02.dart';
import 'package:maps/polylines/point02/View%20Point%2002/sp01vp2_03.dart';


class EndingPoints02 extends StatefulWidget {
  const EndingPoints02({super.key});

  @override
  State<EndingPoints02> createState() => _EndingPoints02State();
}

class _EndingPoints02State extends State<EndingPoints02> {
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
                                    const sp02galagama_01Page()),
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
                                    const sp02galagama_02Page()),
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
                                    const sp02galagama_03Page()),
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
                                    const sp02backers_01Page()),
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
                                    const sp02backers_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp02backers_03Page()),
                          );
                        },
                      )
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
                                builder: (context) => const sp02aggra_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02aggra_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02aggra_03Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02aggra_04Page()),
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
                                builder: (context) => const sp02newz_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02newz_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02newz_03Page()),
                          );
                        },
                      )
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
                                builder: (context) => const sp02a_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02a_02Page()),
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
                                builder: (context) => const sp02we_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02we_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02we_03Page()),
                          );
                        },
                      )
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
                                    const sp02bopath_01Page()),
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
                                    const sp02bopath_02Page()),
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
                                    const sp02bopath_03Page()),
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
                                builder: (context) => const sp02k_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02k_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02k_03Page()),
                          );
                        },
                      ),
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
                                builder: (context) => const sp02mwe_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02mwe_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02mwe_03Page()),
                          );
                        },
                      )
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
                                builder: (context) => const sp02vp_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02vp_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02vp_03Page()),
                          );
                        },
                      )
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
                                builder: (context) => const sp02vp2_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02vp2_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02vp2_03Page()),
                          );
                        },
                      )
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
