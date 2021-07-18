import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 5'),
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
  return ListView.separated(
    itemCount: 20,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('row$index'),
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return Divider(
        height: 20,
        color: Colors.red,
      );
    },
  );
}
