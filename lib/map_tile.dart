import 'package:flutter/material.dart';

class MapTile extends StatelessWidget {
  //final String coffeeImagePath;
  final String pathName;
  //final Function(BuildContext) onImageTap;

  const MapTile({
    super.key,
    //required this.coffeeImagePath,
    required this.pathName,
    //required this.onImageTap,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 5.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black54,
        ),
        child: Column(
          children: [
            // Coffee image
            GestureDetector(
              onTap: () {
                //onImageTap(context);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/map.png"),
              ),
            ),

            // Coffee name
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pathName,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 5),
                  /*const Text(
                    elevation,
                    style: TextStyle(fontSize: 15),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
