import 'package:flutter/material.dart';

class Layouting extends StatefulWidget {
  const Layouting({super.key});

  @override
  State<Layouting> createState() => _LayoutingState();
}

class _LayoutingState extends State<Layouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: 20, height: 20, color: Colors.black),
                  Container(width: 30, height: 30, color: Colors.blue),
                  Container(color: Colors.green, width: 40, height: 40),
                  Container(color: Colors.red, width: 50, height: 50),
                ],
              ),
            ),
            SizedBox(
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(color: Colors.red, width: 50, height: 50),
                  Container(color: Colors.green, width: 40, height: 40),
                  Container(width: 30, height: 30, color: Colors.blue),
                  Container(width: 20, height: 20, color: Colors.black),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(color: Colors.red, width: 50, height: 50),
                  Container(color: Colors.green, width: 40, height: 40),
                  Container(width: 30, height: 30, color: Colors.blue),
                  Container(width: 20, height: 20, color: Colors.black),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(width: 20, height: 20, color: Colors.black),
                  Container(width: 30, height: 30, color: Colors.blue),
                  Container(color: Colors.green, width: 40, height: 40),
                  Container(color: Colors.red, width: 50, height: 50),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(width: 50, height: 50, color: Colors.red),
            ),
            Positioned(
              left: 50,
              bottom: 50,
              child: Container(width: 40, height: 40, color: Colors.green),
            ),
            Positioned(
              left: 90,
              bottom: 90,
              child: Container(width: 30, height: 30, color: Colors.blue),
            ),
            Positioned(
              left: 120,
              bottom: 120,
              child: Container(width: 20, height: 20, color: Colors.black),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(width: 50, height: 50, color: Colors.red),
            ),
            Positioned(
              right: 50,
              bottom: 50,
              child: Container(width: 40, height: 40, color: Colors.green),
            ),
            Positioned(
              right: 90,
              bottom: 90,
              child: Container(width: 30, height: 30, color: Colors.blue),
            ),
            Positioned(
              right: 120,
              bottom: 120,
              child: Container(width: 20, height: 20, color: Colors.black),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(width: 50, height: 50, color: Colors.red),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: Container(width: 40, height: 40, color: Colors.green),
            ),
            Positioned(
              left: 90,
              top: 90,
              child: Container(width: 30, height: 30, color: Colors.blue),
            ),
            Positioned(
              left: 120,
              top: 120,
              child: Container(width: 20, height: 20, color: Colors.black),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(width: 50, height: 50, color: Colors.red),
            ),
            Positioned(
              right: 50,
              top: 50,
              child: Container(width: 40, height: 40, color: Colors.green),
            ),
            Positioned(
              right: 90,
              top: 90,
              child: Container(width: 30, height: 30, color: Colors.blue),
            ),
            Positioned(
              right: 120,
              top: 120,
              child: Container(width: 20, height: 20, color: Colors.black),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset('assets/images/cat_laugh.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}
