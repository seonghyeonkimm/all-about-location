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
            TextSpan(text: 'Map', style: TextStyle(fontWeight: FontWeight.bold))
          ],
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Colors.white),
        )),
      ),
      body: Stack(children: [
        Center(
          child: Text('Maps is here',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.grey)),
        ),
        Positioned(
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
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 2.0,
                child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.store),
                          title: Text('Cafe Name'),
                          subtitle: Text('Cate Description'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text('Show Details'),
                              onPressed: () {
                                print('"Show Details" is tapped');
                              },
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            )))
      ]),
    );
  }
}
