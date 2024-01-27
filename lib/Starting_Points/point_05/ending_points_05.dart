import 'package:flutter/material.dart';
import 'package:maps/controllers/map_tile.dart';
import 'package:maps/polylines/point02/Mini%20Worlds%20End%20Drop/sp01mwe_03.dart';
import 'package:maps/polylines/point05/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_01.dart';
import 'package:maps/polylines/point05/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_02.dart';
import 'package:maps/polylines/point05/Aggra%20Bopath%20Mountain%20Peak/sp01bopath_03.dart';
import 'package:maps/polylines/point05/Aggra%20Falls/sp01aggra_01.dart';
import 'package:maps/polylines/point05/Aggra%20Falls/sp01aggra_02.dart';
import 'package:maps/polylines/point05/Ambewela%20Farm/sp01a_01.dart';
import 'package:maps/polylines/point05/Ambewela%20Farm/sp01a_02.dart';
import 'package:maps/polylines/point05/Bakers%20Falls/sp01backers_01.dart';
import 'package:maps/polylines/point05/Bakers%20Falls/sp01backers_02.dart';
import 'package:maps/polylines/point05/Galagama%20Falls/sp01galagama_01.dart';
import 'package:maps/polylines/point05/Galagama%20Falls/sp01galagama_02.dart';
import 'package:maps/polylines/point05/Great%20Worlds%20End%20Drop/sp01we_01.dart';
import 'package:maps/polylines/point05/Great%20Worlds%20End%20Drop/sp01we_02.dart';
import 'package:maps/polylines/point05/Great%20Worlds%20End%20Drop/sp01we_03.dart';
import 'package:maps/polylines/point05/Kirigalpoththa%20Mountain%20Peak/sp01k_01.dart';
import 'package:maps/polylines/point05/Kirigalpoththa%20Mountain%20Peak/sp01k_02.dart';
import 'package:maps/polylines/point05/Kirigalpoththa%20Mountain%20Peak/sp01k_03.dart';
import 'package:maps/polylines/point05/Mini%20Worlds%20End%20Drop/sp01mwe_01.dart';
import 'package:maps/polylines/point05/Mini%20Worlds%20End%20Drop/sp01mwe_02.dart';
import 'package:maps/polylines/point05/Newzealand%20Farm/sp01newz_01.dart';
import 'package:maps/polylines/point05/Newzealand%20Farm/sp01newz_02.dart';
import 'package:maps/polylines/point05/View%20Point%2001/sp01vp_01.dart';
import 'package:maps/polylines/point05/View%20Point%2001/sp01vp_02.dart';
import 'package:maps/polylines/point05/View%20Point%2001/sp01vp_03.dart';
import 'package:maps/polylines/point05/View%20Point%2002/sp01vp2_01.dart';
import 'package:maps/polylines/point05/View%20Point%2002/sp01vp2_02.dart';
import 'package:maps/polylines/point05/View%20Point%2002/sp01vp2_03.dart';

class EndingPoints05 extends StatefulWidget {
  const EndingPoints05({super.key});

  @override
  State<EndingPoints05> createState() => _EndingPoints05State();
}

class _EndingPoints05State extends State<EndingPoints05> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Starting Points 05"),
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
                        hDistance: '9.4',
                        elevation: '555.9',
                        slope: '11.4% , -13.7%',
                        time: '3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp05galagama_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '8.9',
                        elevation: '519.4',
                        slope: '11.2% , -13.6%',
                        time: '2.9',
                        onImageTap: (BuildContext) {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp05galagama_02Page()),
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
                        hDistance: '',
                        elevation: '',
                        slope: '',
                        time: '',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp05backers_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '11',
                        elevation: '816',
                        slope: '14.2% , -12%',
                        time: '3.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp05backers_02Page()),
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
                        hDistance: '4.9',
                        elevation: '176.2',
                        slope: '10.5% , -13.2%',
                        time: '1.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05aggra_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '6.2',
                        elevation: '236.8',
                        slope: '9.6% , -12.9%',
                        time: '1.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05aggra_02Page()),
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
                        hDistance: '10.6',
                        elevation: '387.7',
                        slope: '8.7% , -12.7%',
                        time: '3.1',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05newz_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '14.2',
                        elevation: '619.4',
                        slope: '8.5% , -13.7%',
                        time: '4.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05newz_02Page()),
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
                        hDistance: '9.4',
                        elevation: '346.9',
                        slope: '6.8% , -12%',
                        time: '2.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05a_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '10.6',
                        elevation: '475',
                        slope: '9.6% , -11.5%',
                        time: '3.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05a_02Page()),
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
                        hDistance: '3.2',
                        elevation: '132',
                        slope: '9.5% , -8.3%',
                        time: '1',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05we_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '4.3',
                        elevation: '187.2',
                        slope: '8.2% , -9.7%',
                        time: '1.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05we_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '9.74',
                        elevation: '624.8',
                        slope: '12.3% , -12.8%',
                        time: '3.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05we_03Page()),
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
                        hDistance: '5.1',
                        elevation: '327.4',
                        slope: '9.5% , -9.4%',
                        time: '1.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp05bopath_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '3.8',
                        elevation: '343.8',
                        slope: '17.6% , -9.6%',
                        time: '1.4',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp05bopath_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '5.9',
                        elevation: '441.4',
                        slope: '12.5% , -11%',
                        time: '2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp05bopath_03Page()),
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
                        hDistance: '4.8',
                        elevation: '410.9',
                        slope: '12.9% , -9.1%',
                        time: '1.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05k_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '5.6',
                        elevation: '434',
                        slope: '11.7% , -10.2',
                        time: '1.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05k_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '4.9',
                        elevation: '379.2',
                        slope: '11.8% , -7.3%',
                        time: '1.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05k_03Page()),
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
                        hDistance: '2.3',
                        elevation: '77.4',
                        slope: '8.6% , -7.8%',
                        time: '0.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05mwe_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '5.3',
                        elevation: '231.9',
                        slope: '8.4% , -9.9%',
                        time: '1.6',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05mwe_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '',
                        elevation: '',
                        slope: '',
                        time: '',
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
                        hDistance: '9.7',
                        elevation: '681',
                        slope: '13.2% , -15.7%',
                        time: '3.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05vp_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '10.7',
                        elevation: '920.2',
                        slope: '15.8% , -18.4%',
                        time: '3.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05vp_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '11.7',
                        elevation: '672.1',
                        slope: '11.3% , -12.1%',
                        time: '3.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05vp_03Page()),
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
                        hDistance: '14.9',
                        elevation: '896.7',
                        slope: '11.7% , -13.3%',
                        time: '4.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05vp2_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '11.9',
                        elevation: '764.7',
                        slope: '12.3% , -15.2%',
                        time: '3.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05vp2_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '13',
                        elevation: '1005.5',
                        slope: '14.4% , -17.4%',
                        time: '4.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp05vp2_03Page()),
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
