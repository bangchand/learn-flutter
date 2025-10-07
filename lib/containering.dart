import 'package:flutter/material.dart';

class Containering extends StatefulWidget {
  const Containering({super.key});

  @override
  State<Containering> createState() => _ContaineringState();
}

class _ContaineringState extends State<Containering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: UnconstrainedBox(
              child: Column(
                spacing: 5,
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          blurRadius: 10,
                          offset: Offset(10, -15),
                          spreadRadius: 10,
                        ),
                      ],
                      color: Colors.grey[700],
                      gradient: RadialGradient(
                        colors: [Colors.grey, Colors.blueGrey],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80),
                      ),
                      border: Border(
                        bottom: BorderSide(color: Colors.black, width: 4),
                      ),
                    ),
                    padding: EdgeInsets.all(60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Image.asset('assets/images/cat_wet.jpeg'),
                        ),
                        Column(
                          children: [
                            Text('RIP', style: TextStyle(fontSize: 30)),
                            Text('2001-2005', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
