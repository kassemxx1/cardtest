import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
var height = 20.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(
              children: <Widget>[

                CustomScrollView(
                  slivers: <Widget>[
                    new SliverAppBar(
                      expandedHeight: 200,
                      floating: false,
                      pinned: true,
                      flexibleSpace: new FlexibleSpaceBar(
                        title: new Text('asdasdasdasdasd'),
                      ),
                    ),
                    new SliverList(
                      delegate: new SliverChildBuilderDelegate(
                          (context, index) => new ListTile(
                                title: new Text('List item$index'),
                              )),
                    ),
                  ],
                ),
              ],
            )));
  }
}
