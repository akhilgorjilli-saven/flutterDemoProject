import 'package:demo/dataItem.dart';
import 'package:demo/dataItems.dart';
import 'package:demo/sideNav.dart';
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
  String header = "birds";
  int tempIndex = 0;


  void setHeader(headerItem, index) {
    setState(() {
      header = headerItem;
      tempIndex = index;
    });
  }

  String getHeader() {
    return 'Welcome to ${header}';
  }

  void navigate(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      print('navigate');
      return DataItem(header);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(header, style: TextStyle(fontWeight: FontWeight.bold))),
        body: DataItems(header,navigate),
        drawer: SideNav(setHeader, tempIndex));
  }


}
