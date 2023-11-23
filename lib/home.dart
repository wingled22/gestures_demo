import 'package:flutter/material.dart';
import 'package:gestures_demo/page2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Sheesh")),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Page2();
                    }));
                  },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.amber,
                  child: const Text("Page2"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.amber,
                child: const Text("Page3"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
