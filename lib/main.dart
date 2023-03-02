import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: ListViewHome(),
      ),
    );
  }
}

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const <Widget>[
        ListTile(
          title: Text("Battery Full"),
          leading: Icon(Icons.battery_full),
        ),
        ListTile(
          title: Text("Anchor"),
          leading: Icon(Icons.anchor),
        ),
        ListTile(
          title: Text("Alarm"),
          leading: Icon(Icons.access_alarm),
        ),
        ListTile(
          title: Text("Ballot"),
          leading: Icon(Icons.ballot),
        )
      ],
    );
  }
}
