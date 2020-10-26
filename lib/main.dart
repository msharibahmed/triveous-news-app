import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './providers/news_provider.dart';

import 'screens/details_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<NewsProvider>(create: (_) => NewsProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            DetailsScreen.routeName: (context) => DetailsScreen(),
            HomeScreen.routeName: (context) => HomeScreen()
          },
          home: HomeScreen(),
        ));
  }
}
