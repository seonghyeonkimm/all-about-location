import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AllMap',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
              text: TextSpan(
            children: [
              TextSpan(text: 'All'),
              TextSpan(
                  text: 'Map', style: TextStyle(fontWeight: FontWeight.bold))
            ],
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white),
          )),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Search', border: const OutlineInputBorder()),
                ),
              ),
            ],
          ),
        ));
  }
}
