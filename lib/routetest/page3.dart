import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter1/routetest/page4.dart';


class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/cat_teary.jpeg', height: 300),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Page4()),
                  (route) => false,
                );
              },
              child: Text('to page 4'),
            ),
          ],
        ),
      ),
    );
  }
}
