import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Online Exam'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final txtContrActivation = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    txtContrActivation.dispose();
    super.dispose();
  }

//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            Text(
              'KINDLY ENTER ACTIVATION CODE.',
              style: TextStyle(
                letterSpacing: 2.00,
                fontSize: 15.00,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                controller: txtContrActivation,
                autofocus: true,
                obscureText: true,
                style: TextStyle(fontSize: 25.00),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (txtContrActivation.text == 'syndicatebank.in') {
            return Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Login();
                },
              ),
            );
            // route to another page

          } else {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(
                    'Wrong activation code. Retry',
                    style: TextStyle(color: Colors.red),
                  ),
                );
              },
            );
          }
        },
        tooltip: 'validate',
        child: Icon(Icons.lock_open),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
