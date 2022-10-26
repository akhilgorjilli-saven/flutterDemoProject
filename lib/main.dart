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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  List<String> items = ['Dashboard', 'Maps', 'TaskManager', 'Settings'];
  List<bool> isHighlighted = [true, false, false, false, false];
  String header = "Dashboard";

  void setHeader(headerItem, index) {
    setState(() {
      header = items[index];
    });
    for (int i = 0; i < isHighlighted.length; i++) {
      setState(() {
        if (index == i) {
          isHighlighted[index] = true;
        } else {
          isHighlighted[i] = false;
        }
      });
    }
  }

  String getHeader() {
    return 'Welcome to ' + ' ' + header;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(header, style: TextStyle(fontWeight: FontWeight.bold))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image.asset('assets/blue.png'),
              Text(
                getHeader(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        drawer: Drawer(
            child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setHeader(header, index);
                Navigator.pop(context);
              },
              child: Container(
                color: isHighlighted[index] ? Colors.blue : Colors.white,
                child: ListTile(
                  title: Text(items[index]),
                ),
              ),
            );
          },
        )));
  }
}
