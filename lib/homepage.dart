import 'package:flutter/material.dart';
import 'package:maps/map.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: ElevatedButton.icon(onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MapPage()
            )
        );
      }, icon: const Icon(Icons.abc_sharp), label: const Text('Click me'))
    );
  }
}
