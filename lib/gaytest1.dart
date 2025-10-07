import 'package:flutter/material.dart';

class GayTest1 extends StatefulWidget {
  const GayTest1({super.key});

  @override
  State<GayTest1> createState() => _GayTest1State();
}

class _GayTest1State extends State<GayTest1> {
  int option = 0;

  @override
  Widget build(BuildContext context) {
    bool isChoosed = option != 0;
    return Scaffold(
      appBar: AppBar(title: Text('Gay Test')),
      body: Column(
        spacing: 10,
        children: [
          Center(
            child: Column(
              children: [
                Text('___  I\'m Gay'),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        Radio<int>(
                          value: 1,
                          groupValue: option,
                          onChanged: isChoosed
                              ? null
                              : (value) {
                                  setState(() {
                                    option = value!;
                                  });
                                },
                        ),
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<int>(
                          value: 2,
                          groupValue: option,
                          onChanged: isChoosed
                              ? null
                              : (value) {
                                  setState(() {
                                    option = value!;
                                  });
                                },
                        ),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<int>(
                          value: 3,
                          groupValue: option,
                          onChanged: isChoosed
                              ? null
                              : (value) {
                                  setState(() {
                                    option = value!;
                                  });
                                },
                        ),
                        Text('Maybe'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<int>(
                          value: 4,
                          groupValue: option,
                          onChanged: isChoosed
                              ? null
                              : (value) {
                                  setState(() {
                                    option = value!;
                                  });
                                },
                        ),
                        Text('-leave blank-'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            (option != 0)
                ? 'assets/images/cat_laugh.jpeg'
                : 'assets/images/cat_stressing.jpeg',
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                option = 0;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.restore), Text('Reset')],
            ),
          ),
        ],
      ),
    );
  }
}
