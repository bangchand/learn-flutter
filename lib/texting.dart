import 'dart:math';
import 'package:flutter/material.dart';

class Texting extends StatefulWidget {
  const Texting({super.key});

  @override
  State<Texting> createState() => _TextingState();
}

class _TextingState extends State<Texting> {
  final inputc = TextEditingController();
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    String value = inputc.text;
    return Scaffold(
      body: Center(
        // child: SizedBox(
        //   width: 200,
        //   child: TextField(
        //     // obscureText: true,
        //     // readOnly: true,
        //     // obscuringCharacter: '|',
        //     // minLines: null,
        //     // maxLines: null,
        //     // expands: true,
        //     textDirection: TextDirection.rtl,
        //     showCursor: false,
        //     decoration: InputDecoration(
        //       label: Text('me input'),
        //       hint: Text('input meeee'),
        //       error: Text('me need input!!'),
        //     ),
        //     textAlign: TextAlign.center,
        //     maxLength: 10,
        //     onChanged: (value) => {print(value)},
        //   ),
        // ),
        child: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  isClicked
                      ? 'assets/images/cat_wet.jpeg'
                      : 'assets/images/cat_screaming.jpeg',
                  height: 200,
                ),
                InkWell(
                  onTap: () => {
                    setState(() {
                      isClicked = !isClicked;
                    }),
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isClicked ? Colors.blue : Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'clickme',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: isClicked ? pi : 0,
                  child: Image.asset(
                    'assets/images/cat_stressing.jpeg',
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
