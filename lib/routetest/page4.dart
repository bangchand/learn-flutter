import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter1/routetest/page3.dart';


class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page4')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/cat_teary.jpeg', height: 300),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              child: Text('to destoyed page (page 3)'),
            ),
          ],
        ),
      ),
    );
  }
}
