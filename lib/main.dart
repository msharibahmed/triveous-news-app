import 'package:flutter/material.dart';
import 'package:triveous_news/screens/details_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        DetailsScreen.routeName: (context) => DetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen()
      },
      home: HomeScreen(),
    );
  }
}
