import 'package:demo/alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataItems extends StatelessWidget {
  DataItems(this.objTitle,this.navigate);
  final String objTitle;
  final Function navigate;
  final itemObj = {
    "birds": ["bird1", "bird2", "bird3","bird4","bird4","bird2","bird1"],
    "books": ["book1", "book2", "book3","book4","book4","book3","book2"],
    "animals": ["animal1", "animal2", "animal3","animal4","animal4","animal3","animal2"],
    "actors": ["actor1", "actor2", "actor3"]
  };



  @override
  Widget build(BuildContext context) {
    var obj = itemObj[this.objTitle];
    // return AlertDialog(
    //   title: Text(this.objTitle),
    // );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 1000,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 10.0,
            crossAxisCount: 2,
          ),
          itemCount: obj?.length ?? 0,
          scrollDirection: Axis.vertical,
          // shrinkWrap: true,
          itemBuilder: (item, index) {
            return GestureDetector(
              onTap: (){
                // AlertDail(this.objTitle);
                navigate(context);
                print('clicked');
              },
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  'assets/${this.objTitle}/${obj?[index]}.jpg',
                  fit: BoxFit.fill,
                  height: 150,
                  width: 50,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
            );
          }),
    );
  }
}
