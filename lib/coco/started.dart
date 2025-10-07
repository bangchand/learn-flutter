import 'package:flutter/material.dart';
import 'properties/color.dart';
import 'home.dart';

class StartedCoco extends StatefulWidget {
  const StartedCoco({super.key});

  @override
  State<StartedCoco> createState() => StartedCocoState();
}

class StartedCocoState extends State<StartedCoco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'COCO',
              style: TextStyle(
                fontSize: 34,
                fontStyle: FontStyle.italic,
                color: CocoColors.primaryTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset('assets/images/cat_wet.jpeg'),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                spacing: 25,
                children: [
                  SizedBox(
                    width: 260,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          letterSpacing: 0.8,
                          height: 1.6,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: 'Start Your Day'),
                          TextSpan(
                            text: ' With Fresh Baked ',
                            style: TextStyle(
                              color: CocoColors.primaryTextColor,
                            ),
                          ),
                          TextSpan(text: 'Foods!'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 374,
                    child: Text(
                      'Indulge in the deliciousness of freshly baked treats to kickstart your morpnings with joy!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CocoColors.secondaryTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      minimumSize: WidgetStatePropertyAll(Size(1000, 0)),
                      padding: WidgetStatePropertyAll(
                        EdgeInsetsGeometry.all(14),
                      ),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                      backgroundColor: WidgetStatePropertyAll(
                        CocoColors.primaryColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeCoco()),
                      );
                    },
                    child: Text(
                      'Let\'s Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
