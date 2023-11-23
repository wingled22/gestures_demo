import 'package:flutter/material.dart';
import 'package:gestures_demo/home.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
          child: GestureDetector(
            child: const Text("back to home"),
            onTap: () {
              if(Navigator.canPop(context)){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) {
                    return const Home();
                  })
                );
              }
          }
        ),
      )
    );
  }
}
