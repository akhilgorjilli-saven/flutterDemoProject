import 'package:flutter/material.dart';

class SideNav extends StatefulWidget {
  SideNav(this.setHeader, this.tempIndex);

  final Function setHeader;
  final int tempIndex;

  @override
  State<SideNav> createState() => SideNavState(this.setHeader,this.tempIndex);
}

class SideNavState extends State<SideNav> {
  List<String> items = ['Dashboard', 'Maps', 'TaskManager', 'Settings'];
  String header = "Dashboard";
  final Function setHeader;
  final int tempIndex;
  SideNavState(this.setHeader,this.tempIndex) {
    print(this.tempIndex);
    print('tempindex');
  }

  isActivate(header, index) {}
  @override
  Widget build(BuildContext context) {
    print(this.tempIndex);
    return Drawer(
        child: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        print(index);
        return GestureDetector(
          onTap: () {
            setHeader(index);
            Navigator.pop(context);
          },
          child: Container(
            color: this.tempIndex == index ? Colors.blue : Colors.white,
            child: ListTile(
              title: Text(items[index]),
            ),
          ),
        );
      },
    ));
  }
}
