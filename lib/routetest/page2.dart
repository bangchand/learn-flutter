import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter1/routetest/page3.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/cat_wet.jpeg', height: 300),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              child: Text('to page 3'),
            ),
          ],
        ),
      ),
    );
  }
}
