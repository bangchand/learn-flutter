import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => TicTacToeState();
}

class TicTacToeState extends State<TicTacToe> {
  int catTurn = 1;
  List<int> catMark = [0, 0, 0, 0, 0, 0, 0, 0, 0];

  void isWin() {
    if (catMark[0] == 1 && catMark[1] == 1 && catMark[2] == 1 ||
        catMark[3] == 1 && catMark[4] == 1 && catMark[5] == 1 ||
        catMark[6] == 1 && catMark[7] == 1 && catMark[8] == 1 ||
        catMark[0] == 1 && catMark[3] == 1 && catMark[6] == 1 ||
        catMark[1] == 1 && catMark[4] == 1 && catMark[7] == 1 ||
        catMark[2] == 1 && catMark[5] == 1 && catMark[8] == 1 ||
        catMark[0] == 1 && catMark[4] == 1 && catMark[8] == 1 ||
        catMark[2] == 1 && catMark[4] == 1 && catMark[6] == 1) {
      setState(() {
        catMark.fillRange(0, 9, 3);
      });
    } else if (catMark[0] == 2 && catMark[1] == 2 && catMark[2] == 2 ||
        catMark[3] == 2 && catMark[4] == 2 && catMark[5] == 2 ||
        catMark[6] == 2 && catMark[7] == 2 && catMark[8] == 2 ||
        catMark[0] == 2 && catMark[3] == 2 && catMark[6] == 2 ||
        catMark[1] == 2 && catMark[4] == 2 && catMark[7] == 2 ||
        catMark[2] == 2 && catMark[5] == 2 && catMark[8] == 2 ||
        catMark[0] == 2 && catMark[4] == 2 && catMark[8] == 2 ||
        catMark[2] == 2 && catMark[4] == 2 && catMark[6] == 2) {
      setState(() {
        catMark.fillRange(0, 9, 4);
      });
    }
  }

  Widget imageCat(int catIndex) {
    if (catMark[catIndex] == 1) {
      return Image.asset('assets/images/cat_screaming.jpeg');
    } else if (catMark[catIndex] == 2) {
      return Image.asset('assets/images/cat_wet.jpeg');
    } else if (catMark[catIndex] == 3) {
      return Image.asset('assets/images/cat_glasses.jpeg');
    } else if (catMark[catIndex] == 4) {
      return Image.asset('assets/images/cat_smirk.jpeg');
    } else {
      return Image.asset('assets/images/cat_question.jpeg');
    }
  }

  Widget buttonImageWidget(int catIndex) {
    isWin();
    return GestureDetector(
      onTap: () {
        if (catTurn == 1) {
          setState(() {
            catTurn++;
            catMark.fillRange(catIndex, catIndex + 1, catTurn);
          });
        } else {
          setState(() {
            catTurn--;
            catMark.fillRange(catIndex, catIndex + 1, catTurn);
          });
        }
      },
      child: imageCat(catIndex),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            children: [Icon(Icons.pets), Text('CikCakCoee')],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: catMark.asMap().entries.map((cat) {
                    int catIndex = cat.key;
                    return buttonImageWidget(catIndex);
                  }).toList(),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                catMark.fillRange(0, 9, 0);
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.restore), Text('Reset')],
            ),
          ),
          SizedBox(height: 40), // Biar ada spasi bawah dikit
        ],
      ),
    );
  }
}
