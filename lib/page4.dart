import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 4'),
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
    itemCount: 20,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('row$index'),
      );
    },
  );
}
