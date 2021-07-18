import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Page9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 9'),
      ),
      body: _BodyLayout(),
    );
  }
}

class _BodyLayout extends StatefulWidget {
  @override
  _BodyLayoutState createState() {
    return new _BodyLayoutState();
  }
}

class _BodyLayoutState extends State<_BodyLayout> {
  List<dynamic> titles = ['Sun', 'Moon', 'Star', 'elma', '100', '200', '300'];

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }

  Widget _myListView() {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        final item = titles[index];
        return Card(
          child: ListTile(
            selectedTileColor: Colors.red,
            title: Text(item),
            onTap: () {
              //                                  <-- onTap
              setState(() {
                titles.insert(index, 'Planet');
              });
            },
            onLongPress: () {
              //                            <-- onLongPress
              setState(() {
                titles.removeAt(index);
              });
            },
          ),
        );
      },
    );
  }
}
