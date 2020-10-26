import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  TabBarView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text('Tab 1'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 2'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 3'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 4'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 5'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 6'),
                ),
              ),Container(
                child: Center(
                  child: Text('Tab 6'),
                ),
              ),Container(
                child: Center(
                  child: Text('Tab 6'),
                ),
              ),Container(
                child: Center(
                  child: Text('Tab 6'),
                ),
              ),Container(
                child: Center(
                  child: Text('Tab 6'),
                ),
              ),
            ],
          );
  }
}
