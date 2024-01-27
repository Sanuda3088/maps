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
                        hDistance: '10.8',
                        elevation: '781.5',
                        slope: '17.7% , -16.7%',
                        time: '3.7',
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
                        hDistance: '18.2',
                        elevation: '940',
                        slope: '10.3% , -12.4%',
                        time: '5.7',
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
                        hDistance: '12.5',
                        elevation: '780',
                        slope: '15.2% , 14.7%',
                        time: '4',
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
                        elevation: '853.5',
                        slope: '12.9% , -7.6%',
                        time: '4',
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
                        hDistance: '12.2',
                        elevation: '963',
                        slope: '12.8% , -9.7',
                        time: '4.4',
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
                        hDistance: '13.8',
                        elevation: '931.2',
                        slope: '13% , -9.9%',
                        time: '4.6',
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
                        hDistance: '13',
                        elevation: '1071.4',
                        slope: '13.8% , -14.9%',
                        time: '4.6',
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
                        hDistance: '19.3',
                        elevation: '1132.3',
                        slope: '11.3% , -10.3%',
                        time: '6.2',
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
                        hDistance: '22.5',
                        elevation: '1523.4',
                        slope: '12.7% , -12.2%',
                        time: '7.5',
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
                        hDistance: '18.2',
                        elevation: '1096.9',
                        slope: '10.4% , -9.2%',
                        time: '5.9',
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
                        hDistance: '19',
                        elevation: '1209.5',
                        slope: '10.4% , -10.5%',
                        time: '6.3',
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
                        hDistance: '12',
                        elevation: '886.7',
                        slope: '13% , -7%',
                        time: '4.1',
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
                        hDistance: '12.9',
                        elevation: '999',
                        slope: '12.9% , 9.2%',
                        time: '4.5',
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
                        hDistance: '5.8',
                        elevation: '755.5',
                        slope: '15.8% , -9.8%',
                        time: '2.6',
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
                        hDistance: '7.6',
                        elevation: '1015.3',
                        slope: '18.9% , -14.4%',
                        time: '3.5',
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
                        hDistance: '5.1',
                        elevation: '831.2',
                        slope: '19.9% , -9%',
                        time: '2.7',
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
                        hDistance: '6.4',
                        elevation: '864.5',
                        slope: '16.5% , -10.9%',
                        time: '3',
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
                        hDistance: '11.2',
                        elevation: '833',
                        slope: '13.2% , 7.3%',
                        time: '3.8',
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
                        hDistance: '7.9',
                        elevation: '1007.4',
                        slope: '19.3% , -20.6%',
                        time: '3.5',
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
                        hDistance: '10.12',
                        elevation: '1191.2',
                        slope: '18.6% , 19.5%',
                        time: '4.2',
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
                        hDistance: '10.2',
                        elevation: '1094.5',
                        slope: '17.5% , -18.5%',
                        time: '4',
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
                        hDistance: '14.9',
                        elevation: '1343.3',
                        slope: '16.3% , -14.1%',
                        time: '5.4',
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
