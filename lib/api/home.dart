import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';


class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  List<PostModel> data = [];
  bool isLoading = false;

  Future<Response> fetchData() async {
    isLoading = true;
    final res = await get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    if (res.statusCode == 200) {
      final js = jsonDecode(res.body);
      data = (js as List)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList();
      setState(() {});
    }

    await Future.delayed(Duration(seconds: 2));
    isLoading = false;
    setState(() {});
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          if (isLoading) {
            return Center(
              child: LinearProgressIndicator(
                color: Colors.red,
                minHeight: MediaQuery.of(context).size.height,
                trackGap: 100,
              ),
            );
          }
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(data[index].title ?? "-"),
              subtitle: Text(data[index].body ?? "-"),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }
}

class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({this.userId, this.id, this.title, this.body});

  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
