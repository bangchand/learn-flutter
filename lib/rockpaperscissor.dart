import 'dart:math';
import 'main.dart';
import 'package:flutter/material.dart';

class RockPaperScissor extends StatefulWidget {
  const RockPaperScissor({super.key});

  @override
  State<RockPaperScissor> createState() => _RockPaperScissorState();
}

class _RockPaperScissorState extends State<RockPaperScissor> {
  int player1 = 4;
  int player2 = 4;
  int player1Score = 0;
  int player2Score = 0;
  var random = Random();

  Widget buildPlayer1Widget() {
    if (player1 == 0) {
      return Image.asset('assets/images/cat_hand_rock.jpeg', height: 300);
    } else if (player1 == 1) {
      return Image.asset('assets/images/cat_hand_paper.jpeg', height: 300);
    } else if (player1 == 2) {
      return Image.asset('assets/images/cat_hand_scissor.jpeg', height: 300);
    } else {
      return Image.asset('assets/images/cat_question.jpeg', height: 300);
    }
  }

  Widget buildPlayer2Widget() {
    if (player2 == 0) {
      return Image.asset('assets/images/cat_hand_rock.jpeg', height: 300);
    } else if (player2 == 1) {
      return Image.asset('assets/images/cat_hand_paper.jpeg', height: 300);
    } else if (player2 == 2) {
      return Image.asset('assets/images/cat_hand_scissor.jpeg', height: 300);
    } else {
      return Image.asset('assets/images/cat_question.jpeg', height: 300);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (player1 == 0 && player2 == 1) {
      player2Score++;
    } else if (player1 == 1 && player2 == 2) {
      player2Score++;
    } else if (player1 == 2 && player2 == 0) {
      player2Score++;
    } else if (player2 == 0 && player1 == 1) {
      player1Score++;
    } else if (player2 == 1 && player1 == 2) {
      player1Score++;
    } else if (player2 == 2 && player1 == 0) {
      player1Score++;
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Transform.rotate(
            angle: pi,
            child: Column(
              children: [
                Text(
                  player1Score.toString(),
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                OutlinedButton(
                  style: player1 != 4
                      ? ButtonStyle(
                          side: WidgetStateProperty.all(
                            BorderSide(color: Colors.red, width: 2),
                          ),
                          backgroundColor: WidgetStateProperty.all(
                            Colors.grey[200],
                          ),
                          minimumSize: WidgetStateProperty.all(
                            Size(double.infinity, 300),
                          ),
                          padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(),
                          ),
                        )
                      : ButtonStyle(
                          side: WidgetStateProperty.all(
                            BorderSide(color: Colors.red, width: 2),
                          ),
                          minimumSize: WidgetStateProperty.all(
                            Size(double.infinity, 300),
                          ),
                          padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(),
                          ),
                        ),
                  onPressed: () {
                    player1 != 4
                        ? null
                        : setState(() {
                            player1 = random.nextInt(3);
                          });
                  },
                  child: buildPlayer1Widget(),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 20,
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    player1 = 4;
                    player2 = 4;
                    player1Score = 0;
                    player2Score = 0;
                  });
                },
                child: Row(
                  spacing: 10,
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.reset_tv), Text('Reset')],
                ),
              ),
              if (player1 != 4 && player2 != 4)
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      player1 = 4;
                      player2 = 4;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.sync),
                      SizedBox(width: 10),
                      Text('Again'),
                    ],
                  ),
                ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  spacing: 10,
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.list), Text('Menu')],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                player2Score.toString(),
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              OutlinedButton(
                style: player2 != 4
                    ? ButtonStyle(
                        side: WidgetStateProperty.all(
                          BorderSide(color: Colors.blue, width: 2),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          Colors.grey[200],
                        ),
                        minimumSize: WidgetStateProperty.all(
                          Size(double.infinity, 300),
                        ),
                        padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(),
                        ),
                      )
                    : ButtonStyle(
                        side: WidgetStateProperty.all(
                          BorderSide(color: Colors.blue, width: 2),
                        ),
                        minimumSize: WidgetStateProperty.all(
                          Size(double.infinity, 300),
                        ),
                        padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(),
                        ),
                      ),
                onPressed: () {
                  player2 != 4
                      ? null
                      : setState(() {
                          player2 = random.nextInt(3);
                        });
                },
                child: buildPlayer2Widget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
