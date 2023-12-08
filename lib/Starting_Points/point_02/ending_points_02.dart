import 'package:flutter/material.dart';

class EndingPoints02 extends StatefulWidget {
  const EndingPoints02({super.key});

  @override
  State<EndingPoints02> createState() => _EndingPoints02State();
}

class _EndingPoints02State extends State<EndingPoints02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ending Points 02"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton.icon(
                onPressed: () {
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.looks_one_rounded),
                label: const Text("Galagama Falls")),
          ElevatedButton.icon(
                onPressed: () {
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.looks_two_rounded),
                label: const Text("Baker's Falls")),
          ElevatedButton.icon(
                onPressed: () {
                 /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.looks_3_rounded),
                label: const Text("Aggra Falls")),
          ElevatedButton.icon(
                onPressed: () {
                 /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.looks_4_rounded),
                label: const Text("Newzealand Farm")),
          ElevatedButton.icon(
                onPressed: () {
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.looks_5_rounded),
                label: const Text("Ambewela Farm")),
          ElevatedButton.icon(
                onPressed: () {
                 /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.looks_6_rounded),
                label: const Text("Great World's End Drop")),
          ElevatedButton.icon(
                onPressed: () {
                 /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.numbers_rounded),
                label: const Text("Aggra Bopath Mountain Peak")),
          ElevatedButton.icon(
                onPressed: () {
                /*  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.numbers_rounded),
                label: const Text("Kirigalpoththa Mountain Peak")),
          ElevatedButton.icon(
                onPressed: () {
                 /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.numbers_rounded),
                label: const Text("Mini World's End Drop")),
          ElevatedButton.icon(
                onPressed: () {
                 /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.numbers_rounded),
                label: const Text("View Point 01")),
          ElevatedButton.icon(
                onPressed: () {
                 /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));*/
                },
                icon: const Icon(Icons.numbers_rounded),
                label: const Text("View Point 02")),
        ],
      ),
    );
  }
}