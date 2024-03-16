import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:maps/controllers/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: height*0.88,
                  child: Lottie.asset("assets/animations/a1.json")),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 243, 242, 234),
              backgroundColor: Colors.orange /*Color.fromARGB(255, 10, 4, 70)*/,
              padding: const EdgeInsets.all(20),
              fixedSize: const Size(170, 60),
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              elevation: 5,
              side: const BorderSide(
                color: Color.fromARGB(255, 249, 252, 251),
                width: 4,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
                  onPressed: (){
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HomePage()));
                }, child: const Text("Let's Go"),
                )
              ],
            ),
          ),
        ),
      );
  }
}