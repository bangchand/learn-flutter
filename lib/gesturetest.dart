import 'package:flutter/material.dart';

class GestureTest extends StatefulWidget {
  const GestureTest({super.key});

  @override
  State<GestureTest> createState() => _GestureTestState();
}

class _GestureTestState extends State<GestureTest> {
  int pageIndex = 0;
  double _dragStart = 0.0;

  Widget catImageWidget() {
    if (pageIndex == 0) {
      return Image.asset('assets/images/cat_question.jpeg', height: 300);
    } else if (pageIndex == 1) {
      return Image.asset('assets/images/cat_stressing.jpeg', height: 300);
    } else if (pageIndex == 2) {
      return Image.asset('assets/images/cat_laugh.jpeg', height: 300);
    } else {
      return Image.asset('assets/images/cat_question.jpeg', height: 300);
    }
  }

  Widget catTextWidget() {
    if (pageIndex == 0) {
      return Text(
        'Cat Questioning you "HUHHHHH?!!!',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      );
    } else if (pageIndex == 1) {
      return Text(
        'Cat Stressing "EEEEEEEEUUKHHHH',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      );
    } else if (pageIndex == 2) {
      return Text(
        'Cat Laughing at you "HHAAAAHAHHHHAAAA!!!',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      );
    } else {
      return Image.asset('assets/images/cat_question.jpeg', height: 300);
    }
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanStart: (details) {
          _dragStart = details.globalPosition.dx;
        },
        onPanEnd: (details) {
          if (_dragStart != 0) {
            double difference = details.velocity.pixelsPerSecond.dx;
            if (difference < 100) {
              if (pageIndex != 2) {
                setState(() {
                  pageIndex++;
                });
              }
            }
            if (difference > 100) {
              if (pageIndex != 0) {
                setState(() {
                  pageIndex--;
                });
              }
            }
          }
        },
        child: Container(
          color: Colors.red,
          child: Column(
            spacing: 30,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: catImageWidget()),
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Column(
                  spacing: 10,
                  children: [
                    catTextWidget(),
                    Row(children: [Text('Cat Order')]),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 20,
                          color: pageIndex != 0 ? Colors.grey[400] : null,
                        ),
                        Icon(
                          Icons.circle,
                          size: 20,
                          color: pageIndex != 1 ? Colors.grey[400] : null,
                        ),
                        Icon(
                          Icons.circle,
                          size: 20,
                          color: pageIndex != 2 ? Colors.grey[400] : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
