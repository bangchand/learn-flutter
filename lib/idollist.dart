import 'package:flutter/material.dart';

class IdolList extends StatefulWidget {
  const IdolList({super.key});

  @override
  State<IdolList> createState() => _IdolListState();
}

class _IdolListState extends State<IdolList> {
  final idolController = TextEditingController();
  List<String> idolList = [];

  @override
  void initState() {
    super.initState();
    idolController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite, color: Colors.red),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.favorite, color: Colors.red[300]),
                            Text(
                              'New Idol',
                              style: TextStyle(color: Colors.red[300]),
                            ),
                          ],
                        ),
                        content: TextField(
                          controller: idolController,
                          decoration: InputDecoration(hint: Text('new idol')),
                        ),
                        actionsAlignment: MainAxisAlignment.spaceBetween,
                        actions: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('cancle'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                idolList.add(idolController.text);
                                idolController.clear();
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text('add'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.plus_one, color: Colors.red[200]),
                      Text(
                        'Add Idol',
                        style: TextStyle(color: Colors.red[200]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(child: Text('geture')),
          Column(children: idolList.map((idol) => Text(idol)).toList()),
        ],
      ),
    );
  }
}
