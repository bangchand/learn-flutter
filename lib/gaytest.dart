import 'package:flutter/material.dart';

class GayTest extends StatefulWidget {
  const GayTest({super.key});

  @override
  State<GayTest> createState() => _GayTestState();
}

class _GayTestState extends State<GayTest> {
  int option1 = 0;
  int option2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gay Test 2.0')),
      body: Column(
        spacing: 10,
        children: [
          Column(
            children: [
              Text('Are you gay?'),
              Row(
                children: [
                  Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: option1,
                        onChanged: option2 == 1
                            ? null
                            : (value) {
                                setState(() {
                                  option1 = value!;
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
                        groupValue: option1,
                        onChanged: option2 == 2
                            ? null
                            : (value) {
                                setState(() {
                                  option1 = value!;
                                });
                              },
                      ),
                      Text('No'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text('Are you lying?'),
              Row(
                children: [
                  Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: option2,
                        onChanged: option1 == 1
                            ? null
                            : (value) {
                                setState(() {
                                  option2 = value!;
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
                        groupValue: option2,

                        onChanged: option1 == 2
                            ? null
                            : (value) {
                                setState(() {
                                  option2 = value!;
                                });
                              },
                      ),
                      Text('No'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            (option1 != 0 && option2 != 0)
                ? 'assets/images/cat_laugh.jpeg'
                : 'assets/images/cat_stressing.jpeg',
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                option1 = 0;
                option2 = 0;
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
