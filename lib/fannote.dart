import 'package:flutter/material.dart';

class FanNote extends StatefulWidget {
  const FanNote({super.key});

  @override
  State<FanNote> createState() => _FanNoteState();
}

class _FanNoteState extends State<FanNote> {
  List<String> notes = [''];
  String note = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FanNote')),
      body: Column(
        spacing: 20,
        children: [
          Text('New Note'),
          Text(note),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hint: Text('tulis catatatn disini'),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      note = "terisi";
                    });
                  },
                  child: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
