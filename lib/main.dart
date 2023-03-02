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
          title: const Text('My App'),
        ),
        body: const ListViewHome(),
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
            subtitle: Text("The battery is full."),
            leading: Icon(Icons.battery_full),
            trailing: Icon(Icons.star)),
        ListTile(
            title: Text("Anchor"),
            subtitle: Text("Lower the anchor."),
            leading: Icon(Icons.anchor),
            trailing: Icon(Icons.star)),
        ListTile(
            title: Text("Alarm"),
            subtitle: Text("This is the time."),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.star)),
        ListTile(
            title: Text("Ballot"),
            subtitle: Text("Cast your vote."),
            leading: Icon(Icons.ballot),
            trailing: Icon(Icons.star))
      ],
    );
  }
}
