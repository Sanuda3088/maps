import 'package:flutter/material.dart';
import 'package:maps/controllers/map_tile.dart';
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
import 'package:maps/polylines/point01/Mini%20Worlds%20End%20Drop/sp01mwe_01.dart';
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

class EndingPoints01 extends StatefulWidget {
  const EndingPoints01({super.key});

  @override
  State<EndingPoints01> createState() => _EndingPoints01State();
}

class _EndingPoints01State extends State<EndingPoints01> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Starting Points 01"),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.orange),
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
                        hDistance: '1.4', 
                        elevation: '96', 
                        slope: '13.6% , -15.8%', 
                        time: '0.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp01galagama_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '2', 
                        elevation: '112', 
                        slope: '10% , -12.8%', 
                        time: '0.7',
                        onImageTap: (BuildContext) {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp01galagama_02Page()),
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
                        hDistance: '5.3', 
                        elevation: '440', 
                        slope: '17.2% , -11.9%', 
                        time: '1.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp01backers_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '4.9', 
                        elevation: '403', 
                        slope: '17.2% , -11.3%', 
                        time: '1.4',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp01backers_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '7', 
                        elevation: '600', 
                        slope: '18.3% , -12.7%', 
                        time: '2.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp01backers_03Page()),
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
                        hDistance: '12.9', 
                        elevation: '758', 
                        slope: '12.6% , -11.5%', 
                        time: '4.2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01aggra_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '14.5', 
                        elevation: '900', 
                        slope: '13.2% , -11.9%', 
                        time: '4.75',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01aggra_02Page()),
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
                        hDistance: '18.5', 
                        elevation: '960', 
                        slope: '10.7% , -11.3%', 
                        time: '5.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01newz_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '20', 
                        elevation: '1710', 
                        slope: '11.3% , -11.7%', 
                        time: '7.25',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01newz_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '21', 
                        elevation: '1122', 
                        slope: '11.7% , -10.9%', 
                        time: '6.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01newz_03Page()),
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
                        hDistance: '17.3', 
                        elevation: '925', 
                        slope: '9.6% , -10.6%', 
                        time: '5.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01a_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '19.8', 
                        elevation: '1085', 
                        slope: '10.7% , -10.2%', 
                        time: '6.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01a_02Page()),
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
                        hDistance: '5.5', 
                        elevation: '412.4', 
                        slope: '14.1% , -10.8%', 
                        time: '1.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01we_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '8', 
                        elevation: '852', 
                        slope: '13.3% , -10.2% ', 
                        time: '3.1',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01we_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '15.3', 
                        elevation: '1050.3', 
                        slope: '14% , -10.7% ', 
                        time: '5.1',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01we_03Page()),
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
                        hDistance: '13', 
                        elevation: '910.5', 
                        slope: '11.2% , -10.2%', 
                        time: '4.4',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp01bopath_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '7.4', 
                        elevation: '747.7', 
                        slope: '17.7% , -13.3% ', 
                        time: '2.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sp01bopath_02Page()),
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
                        elevation: '563', 
                        slope: '18.4% , -9.4%', 
                        time: '2',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01k_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '8', 
                        elevation: '814', 
                        slope: '17.6% , -11.5% ', 
                        time: '3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01k_02Page()),
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
                        hDistance: '6.5', 
                        elevation: '500', 
                        slope: '13.4% , -10.8%', 
                        time: '2.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01mwe_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '12', 
                        elevation: '798', 
                        slope: '13.5% , -10.5%', 
                        time: '4',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01mwe_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '9.6', 
                        elevation: '734', 
                        slope: '14.7% , -12.3%', 
                        time: '3.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01mwe_03Page()),
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
                        hDistance: '7.3', 
                        elevation: '546.2', 
                        slope: '15.1% , -12.9%', 
                        time: '2.1',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01vp_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '4.3', 
                        elevation: '541', 
                        slope: '16% , -13.2%', 
                        time: '1.9',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01vp_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '7.6', 
                        elevation: '697', 
                        slope: '17.3% , -16.9%', 
                        time: '2.8',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01vp_03Page()),
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
                        hDistance: '7.8', 
                        elevation: '577', 
                        slope: '15.5% , -14.6%', 
                        time: '2.7',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01vp2_01Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "B",
                        hDistance: '7', 
                        elevation: '463', 
                        slope: '14.5% , -13.5%', 
                        time: '2.3',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01vp2_02Page()),
                          );
                        },
                      ),
                      MapTile(
                        pathName: "C",
                        hDistance: '9.9', 
                        elevation: '784', 
                        slope: '15.4% , -16.1%', 
                        time: '3.5',
                        onImageTap: (BuildContext) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sp01vp2_03Page()),
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
