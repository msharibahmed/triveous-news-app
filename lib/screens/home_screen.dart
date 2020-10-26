import 'package:flutter/material.dart';
import 'package:triveous_news/widgets/tab_bar_view_widget.dart';
import 'package:triveous_news/widgets/tab_bar_widget.dart';

class HomeScreen extends StatelessWidget {
    static const routeName='home-screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            // leading: Icon(Icons.person_outline),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('TRIVEOUS  ',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('NEWS', style: TextStyle(fontSize: 16))
              ],
            ),
            bottom: PreferredSize(
                child: TabBarWidget(), preferredSize: Size.fromHeight(30.0)),
            // actions: <Widget>[
            //   Padding(
            //     padding: const EdgeInsets.only(right: 16.0),
            //     child: Icon(Icons.add_alert),
            //   ),
            // ],
          ),
          body: TabBarViewWidget()),
    );
  }
}
