import 'package:flutter/material.dart';
import 'package:gestures_demo/page2.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  bool isOn = false;

  void myFunction() {
    // setState(() {
    //   isOn = !isOn;
    // });

    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => const Page2())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: myFunction,
            child: Icon(Icons.light,
                size: 200, color: isOn ? Colors.yellow : Colors.black)),
      ),
    );
  }
}
