import 'package:flutter/material.dart';

class AlertButton extends StatefulWidget {
  const AlertButton({super.key});

  @override
  State<AlertButton> createState() => _AlertButtonState();
}

class _AlertButtonState extends State<AlertButton> {
  final textController = TextEditingController();
  String idolName = '';
  List<String> idolList = [];

  @override
  void initState() {
    super.initState();
    textController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('tset aler')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Test Alert hehe :D'),
                  content: Text('this is content'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('close'),
                    ),
                  ],
                ),
              );
            },
            child: Text('alert'),
          ),
          TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              label: Text('idol'),
              hint: Text('bo young'),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                idolName = textController.text;
                idolList.add(textController.text);
                textController.clear();
              });
            },
            child: Text('lanjut'),
          ),
          if (idolName.isNotEmpty) Text(idolName),
          Column(children: idolList.map((idol) => Text(idol)).toList()),
        ],
      ),
    );
  }
}
