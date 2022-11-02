import 'package:flutter/material.dart';

class AlertDail extends StatelessWidget {
  const AlertDail(this.objTitle);
  final String objTitle;
  @override
  Widget build(BuildContext context) {
    print('alert widget');
    return AlertDialog(
      title: Text('Welcome to ${this.objTitle} page '),
    );
  }
}
