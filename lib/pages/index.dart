import 'package:flutter/material.dart';
import 'package:hxl_study/pages/page_animate/index.dart';
import 'package:hxl_study/pages/page_animate/index2.dart';

class Index extends StatelessWidget {
  static const String route = '/';

  const Index({Key? key}) : super(key: key);

  static List<Map<String, dynamic>> menu = [
    {"label": "page animate", "page": PageAnimateIndex.route},
    {"label": "page animate2 arguments use", "page": PageAnimateIndex2.route, "arguments": "test arguments"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("navigation function list"),
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(menu[index]['label']),
            onTap: () {
              Navigator.of(context).pushNamed(menu[index]['page'], arguments: menu[index]['arguments']);
            },
          );
        },
      ),
    );
  }
}
