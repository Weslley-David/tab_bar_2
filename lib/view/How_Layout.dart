import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class How_Layout extends StatefulWidget {
  const How_Layout({super.key});

  @override
  State<How_Layout> createState() => _How_LayoutState();
}

class _How_LayoutState extends State<How_Layout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.7,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(color: Colors.black38),
                  // margin: EdgeInsets.all(8),
                ),
                Container(
                  width: MediaQuery.of(context).size.height * 0.7,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(color: Colors.black38),
                  // margin: EdgeInsets.all(8),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(color: Colors.black38),
                  //margin: EdgeInsets.only(right: 30),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.5,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(color: Colors.black38),
                  margin: EdgeInsets.all(8),
                ),
                Container(
                  width: MediaQuery.of(context).size.height * 0.5,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(color: Colors.black38),
                  margin: EdgeInsets.all(8),
                ),
                Container(
                  width: MediaQuery.of(context).size.height * 0.5,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(color: Colors.black38),
                  margin: EdgeInsets.all(8),
                ),
              ],
            ),
          ],
        ),
      );
  }
}