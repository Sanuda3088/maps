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

class EndingPoints03 extends StatefulWidget {
  const EndingPoints03({super.key});

  @override
  State<EndingPoints03> createState() => _EndingPoints03State();
}

class _EndingPoints03State extends State<EndingPoints03> {
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
                        hDistance: '19.3',
                        elevation: '1018.5',
                        slope: '9.5% , -10.7%',
                        time: '6.1',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp03galagama_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '20.9',
                        elevation: '1154.9',
                        slope: '10% , -11.1%',
                        time: '6.7',
                        onImageTap: (BuildContext) {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp03galagama_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '21.6',
                        elevation: '1180',
                        slope: '14.4% , -10.4%',
                        time: '6.9',
                        onImageTap: (BuildContext) {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp03galagama_03Page()),
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
                        hDistance: '12.6',
                        elevation: '710',
                        slope: '10.7% , -7%',
                        time: '4',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp03backers_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '14.9',
                        elevation: '990.6',
                        slope: '12.4% , -9.5%',
                        time: '5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp03backers_02Page()),
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
                        hDistance: '10.4',
                        elevation: '689',
                        slope: '14.3% , 11.3%',
                        time: '3.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03aggra_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '10.5',
                        elevation: '784.6',
                        slope: '14.2% , -14.6%',
                        time: '3.6',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03aggra_02Page()),
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
                        hDistance: '4.3',
                        elevation: '271.6',
                        slope: '14.6% , -18.8%',
                        time: '1.4',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03newz_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '5.2',
                        elevation: '315',
                        slope: '13.2% , -17%',
                        time: '1.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03newz_02Page()),
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
                        hDistance: '0.5',
                        elevation: '26.8',
                        slope: '7.7% , -3.8%',
                        time: '0.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03a_01Page()),
                          );
                        },
                      ),
                      /*MapTile(
                        pathName: "B",
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp02a_02Page()),
                          );
                        },
                      ),*/
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
                        hDistance: '13.2',
                        elevation: '745.2',
                        slope: '11% , -6.7%',
                        time: '4.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03we_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '15.5',
                        elevation: '1026.6',
                        slope: '12.5% , -9.2%',
                        time: '5.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03we_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '15.71',
                        elevation: '982.4',
                        slope: '11.7% , -8.5%',
                        time: '5.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03we_03Page()),
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
                        hDistance: '15',
                        elevation: '937',
                        slope: '10.1% , -7.2%',
                        time: '4.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp03bopath_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '12.2',
                        elevation: '916.5',
                        slope: '14.1% , -7.5%',
                        time: '4.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp03bopath_02Page()),
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
                        hDistance: '14.8',
                        elevation: '1024',
                        slope: '11.8% , -6.8%',
                        time: '5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03k_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '15.5',
                        elevation: '1045',
                        slope: '10.8% , -7.3%',
                        time: '5.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03k_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '14.8',
                        elevation: '1187',
                        slope: '14.6% , -8.6%',
                        time: '5.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03k_03Page()),
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
                        hDistance: '12.2',
                        elevation: '690.7',
                        slope: '11% , -6.7%',
                        time: '3.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03mwe_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '14.5',
                        elevation: '975.6',
                        slope: '12.8% , -9.4%',
                        time: '4.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03mwe_02Page()),
                          );
                        },
                      ),
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
                        hDistance: '19.6',
                        elevation: '1283.8',
                        slope: '11.6% , -10.5%',
                        time: '6.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03vp_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '20.6',
                        elevation: '1346.6',
                        slope: '11.4% , -10.6%',
                        time: '6.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03vp_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '19.6',
                        elevation: '1451.5',
                        slope: '13.9% , -11.6%',
                        time: '6.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03vp_03Page()),
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
                        hDistance: '25.4',
                        elevation: '1493.5',
                        slope: '10.6% , -10.2%',
                        time: '8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03vp2_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '24.1',
                        elevation: '1813.6',
                        slope: '13.8% , -12.6%',
                        time: '8.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp03vp2_02Page()),
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
