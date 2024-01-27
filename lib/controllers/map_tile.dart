import 'package:flutter/material.dart';

class MapTile extends StatelessWidget {
  String hDistance;
  String elevation;
  String slope;
  String time;
  final String pathName;
  final Function(BuildContext) onImageTap;

  MapTile({
    super.key,
    required this.hDistance,
    required this.elevation,
    required this.slope,
    required this.time,
    required this.pathName,
    required this.onImageTap,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 5.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: width * 0.5,
        height: height * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black54,
        ),
        child: Column(
          children: [
            // Coffee image
            GestureDetector(
              onTap: () {
                onImageTap(context);
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => 
                  ),
                );*/
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/map.png"),
              ),
            ),

            // Coffee name
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 14.0, bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 18),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Route: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '$pathName'),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 18),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Distance: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '${hDistance}km'),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 18),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Elevation: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '${elevation}m'),
                      ],
                    ),
                  ),
                  const Text(
                    "Average Slope: ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    slope,
                    style: const TextStyle(fontSize: 18),
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 18),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Time: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '${time}h'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
