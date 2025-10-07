import 'package:flutter/material.dart';

class FanList extends StatefulWidget {
  const FanList({super.key});

  @override
  State<FanList> createState() => _FanListState();
}

class _FanListState extends State<FanList> {
  List<bool> isChecked = [false, false, false];

  @override
  Widget build(BuildContext context) {
    dynamic con = isChecked.where((item) => item).length;
    double iconSize = con * 50.0;
    return Scaffold(
      appBar: AppBar(title: const Text('Fanlisrt')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          children: [
            Icon(Icons.favorite, size: iconSize, color: Colors.red[300]),
            Row(
              children: [
                Checkbox(
                  value: isChecked[0],
                  onChanged: (value) {
                    setState(() {
                      isChecked[0] = value!;
                    });
                  },
                ),
                Text('Cheryoung'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked[1],
                  onChanged: (value) {
                    setState(() {
                      isChecked[1] = value!;
                    });
                  },
                ),
                Text('Park bo young'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked[2],
                  onChanged: (value) {
                    setState(() {
                      isChecked[2] = value!;
                    });
                  },
                ),
                Text('Kang min ji'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
