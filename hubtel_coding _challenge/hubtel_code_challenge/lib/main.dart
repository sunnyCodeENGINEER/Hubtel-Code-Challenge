import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hubtel_code_challenge/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var transactions = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.grey[400],
              child: Row(
                children: [
                  // History Button
                  Container(
                    width: 100,
                    height: 20,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: const Text("History"),
                  ),
                  // Transaction Summary Button
                  Container(
                    width: 100,
                    height: 20,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: const Text("Transaction Summary"),
                  ),
                ],
              ),
            ),
            const Divider(),
            Row(
              children: [
                const TextField(),
                ListView(
                  children: const [
                    TransactionCard(
                      name: "Emmanuel Rockson Kwabena Uncle Ebo",
                      icon: "",
                      status: "Successful",
                    ),
                    TransactionCard(
                      name: "Absa Bank",
                      icon: "",
                      status: "Unsuccessful",
                    ),
                    TransactionCard(
                      name: "Emmanuel Rockson",
                      icon: "",
                      status: "Successful",
                    ),
                    TransactionCard(
                      name: "Emmanuel Rockson",
                      icon: "",
                      status: "Successful",
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
