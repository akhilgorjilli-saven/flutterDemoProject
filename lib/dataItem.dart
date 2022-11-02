import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataItem extends StatelessWidget {
  const DataItem(this.objTitle);
  final String objTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.objTitle),
      ),
      body: Center(
        child: Text('Welcome to ${this.objTitle} page',
          textAlign: TextAlign.center,)
      )
    );
  }
}
