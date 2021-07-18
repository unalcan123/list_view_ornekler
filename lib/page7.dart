import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 7'),
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
  return ListView(
    children: [
      ListTile(
        title: Text('Sun'),
        leading: Icon(Icons.wb_sunny),
      ),
      ListTile(
        title: Text('Air'),
        leading: Icon(Icons.ac_unit),
      ),
      ListTile(
        title: Text('Alarm'),
        leading: Icon(Icons.access_alarm),
      ),
      ListTile(
        title: Text('Acces'),
        leading: Icon(Icons.accessibility),
      ),
      Center(
        child: CachedNetworkImage(
          imageUrl: "http://via.placeholder.com/200x150",
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
            ),
          ),
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
      ListTile(
        leading: Image.network('https://picsum.photos/250?image=19'),
        title: Text('account'),
      ),
      ListTile(
        title: Text('Car repair'),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/flutter-listview-9.jpg'),
        ),
      ),
      ListTile(
        title: Text('Moon- maan'),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/flutter-listview-10.jpg'),
        ),
      ),
      ListTile(
        title: Text('Car repair'),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/flutter-listview-11.jpg'),
        ),
      ),
    ],
  );
}
