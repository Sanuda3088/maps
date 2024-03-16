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
        title: const Text("Starting Point 02"),
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '7',
                        elevation: '386.8',
                        slope: '13.5% , -17.4%',
                        time: '2.2',
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
                        hDistance: '9.3',
                        elevation: '543.8',
                        slope: '14.2% , -15.3%',
                        time: '3',
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
                        hDistance: '11.1',
                        elevation: '654.5',
                        slope: '13.4% , -14.3%',
                        time: '3.8',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '16.9',
                        elevation: '1145.1',
                        slope: '14.2% , -18.2%',
                        time: '3.5',
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
                        hDistance: '16.9',
                        elevation: '1145.1',
                        slope: '14.2% , -18.2%',
                        time: '3.5',
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
                        hDistance: '16.9',
                        elevation: '1145.1',
                        slope: '14.2% , -18.2%',
                        time: '3.5',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '16.9',
                        elevation: '1145.1',
                        slope: '12.5% , -15.1%',
                        time: '5.6',
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
                        hDistance: '17.7',
                        elevation: '1169.8',
                        slope: '11.5% , -15.6%',
                        time: '5.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02aggra_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '18.7',
                        elevation: '1191.7',
                        slope: '12.1% , -13.4%',
                        time: '6.1',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02aggra_03Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "D",
                        hDistance: '20.7',
                        elevation: '1272.8',
                        slope: '11.4% , -12.7%',
                        time: '6.8',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '22.5',
                        elevation: '1567.2',
                        slope: '11.8% , -13.2%',
                        time: '7.6',
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
                        hDistance: '23.5',
                        elevation: '1630',
                        slope: '11.7% , -12.9%',
                        time: '7.9',
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
                        hDistance: '25.6',
                        elevation: '1713',
                        slope: '11.2% , -12.2%',
                        time: '8.5',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '21.4',
                        elevation: '1290',
                        slope: '11.3% , -12.2%',
                        time: '7',
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
                        hDistance: '24.5',
                        elevation: '1433.5',
                        slope: '10.5% , -11.5%',
                        time: '7.9',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '10.56',
                        elevation: '630.3',
                        slope: '13.5% , -16.8%',
                        time: '3.4',
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
                        hDistance: '12.7',
                        elevation: '715',
                        slope: '11.9% , -15.7%',
                        time: '4',
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
                        hDistance: '11.51',
                        elevation: '561',
                        slope: '11.2% , -14%',
                        time: '3.6',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '9.7',
                        elevation: '575.7',
                        slope: '15.2% , -18.9%',
                        time: '3.2',
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
                        hDistance: '10.7',
                        elevation: '816.25',
                        slope: '18.1% , -21%',
                        time: '3.7',
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
                        pathName: "C",
                        hDistance: '20.8',
                        elevation: '1014.4',
                        slope: '10.7% , -12.8%',
                        time: '6.3',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '7.2',
                        elevation: '303.6',
                        slope: '13.3% , -19.8%',
                        time: '2.2',
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
                        hDistance: '11.9',
                        elevation: '590',
                        slope: '11.9% , -17.3%',
                        time: '3.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02k_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '9.6',
                        elevation: '400',
                        slope: '10.9% , -17.7%',
                        time: '2.9',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '11.5',
                        elevation: '1121.5',
                        slope: '16% , -13.3%',
                        time: '4.3',
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
                        hDistance: '15.3',
                        elevation: '1500',
                        slope: '17.6% , -13.2%',
                        time: '5.7',
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
                        hDistance: '13.6',
                        elevation: '1205',
                        slope: '15.1% , -11.7%',
                        time: '4.9',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '3.5',
                        elevation: '492.9',
                        slope: '18.5% , -11.5%',
                        time: '1.7',
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
                        hDistance: '4.31',
                        elevation: '598.3',
                        slope: '20% , -15%',
                        time: '2',
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
                        hDistance: '4.3',
                        elevation: '590',
                        slope: '19.5% , -15.5%',
                        time: '2',
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
                style: TextStyle(color: Colors.orange,fontSize: 20, fontWeight: FontWeight.w600),
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
                        hDistance: '5.4',
                        elevation: '348',
                        slope: '14.4% , -19.6%',
                        time: '1.8',
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
                        hDistance: '9.6',
                        elevation: '615.8',
                        slope: '14% , -15%',
                        time: '3.2',
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
                        hDistance: '8.7',
                        elevation: '580',
                        slope: '15% , -16.1%',
                        time: '2.9',
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
