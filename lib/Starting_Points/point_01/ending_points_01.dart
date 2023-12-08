import 'package:flutter/material.dart';
import 'package:maps/map_tile.dart';

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
        title: const Text("Ending Points 01"),
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: h * 0.4,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MapTile(pathName: "A"),
                          MapTile(pathName: "B"),
                          MapTile(pathName: "C")
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
