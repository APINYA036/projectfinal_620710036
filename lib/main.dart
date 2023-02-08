// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CALENDAR 2023',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'abc'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              //decoration : TextDecoration.underline
            ),
            const SizedBox(width: 10),
            const Text('←    CALENDAR 2023'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('January'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('February'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('March'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('April'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('May'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('June'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('July'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('August'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('September'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('October'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('November'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: OutlinedButton(
                      onPressed: () {
                        //todo:
                      },
                      child: Text('December'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}