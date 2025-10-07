import 'package:flutter/material.dart';
import 'package:flutter1/fanlist.dart';
import 'package:flutter1/gaytest.dart';
import 'package:flutter1/ballance.dart';
import 'package:flutter1/gaytest1.dart';
import 'package:flutter1/coco/home.dart';
import 'package:flutter1/layouting.dart';
import 'package:flutter1/tictactoe.dart';
import 'package:flutter1/pasar/home.dart';
import 'package:flutter1/ngucek/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          spacing: 14 ,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TicTacToe()));
            }, child: Text("tictactoe")),
                 ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FanList()));
            }, child: Text("fanlist")),
                 ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Layouting()));
            }, child: Text("layouting")),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GayTest()));
            }, child: Text("gaytest")),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GayTest1()));
            }, child: Text("gaytest 1")),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ballance()));
            }, child: Text("ballance")),
               ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePasar()));
            }, child: Text("pasar")),
                ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginNgucek()));
            }, child: Text("login ngucek")),
                  ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeCoco()));
            }, child: Text("coco")),
          ],
        ),
      ),
    );
  }
}
