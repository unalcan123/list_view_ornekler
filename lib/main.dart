import 'package:flutter/material.dart';
import 'package:list_view_ornekler/page1.dart';
import 'package:list_view_ornekler/page2.dart';
import 'package:list_view_ornekler/page3.dart';
import 'package:list_view_ornekler/page4.dart';
import 'package:list_view_ornekler/page5.dart';
import 'package:list_view_ornekler/page6.dart';
import 'package:list_view_ornekler/page7.dart';
import 'package:list_view_ornekler/page8.dart';
import 'package:list_view_ornekler/page9.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Views'),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  const BodyLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: [
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page1(),
            ),
          );
        },
        title: Text('Page 1:Static ListView'),
      ),
      Divider(
        color: Colors.red,
        height: 10,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page2(),
            ),
          );
        },
        title: Text('Page 2: the ListTile.divideTiles'),
      ),
      Divider(
        color: Colors.red,
        height: 10,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page3(),
            ),
          );
        },
        title: Text('Page 3: Dynamic ListView'),
      ),
      Divider(
        color: Colors.red,
        height: 10,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page4(),
            ),
          );
        },
        title: Text('Page 4: Infinite list'),
      ),
      Divider(
        color: Colors.red,
        height: 10,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page5(),
            ),
          );
        },
        title: Text('Page 5: ListView.separated'),
      ),
      Divider(
        color: Colors.red,
        height: 10,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page6(),
            ),
          );
        },
        title: Text('Page 6: Horizontal ListView'),
      ),
      Divider(
        color: Colors.red,
        height: 10,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page7(),
            ),
          );
        },
        title: Text('Page 7: ListTile customization'),
      ),
      Divider(
        color: Colors.red,
        height: 10,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page8(),
            ),
          );
        },
        title: Text('Page 8: List two lijst  Cards'),
      ),
      Divider(
        color: Colors.red,
        height: 10,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Page9(),
            ),
          );
        },
        title: Text('Page 9: Updating list data'),
      ),
    ],
  );
}
