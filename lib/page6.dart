import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 6'),
      ),
      body: _BodyLayout(),
    );
  }
}

class _BodyLayout extends StatelessWidget {
  const _BodyLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView.builder(
    itemCount: 100,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        color: Colors.tealAccent,
        child: Text('$index'),
      );
    },
  );
}
