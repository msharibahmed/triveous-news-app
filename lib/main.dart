import 'utils/imports.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.grey[50]));
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
            HomeScreen.routeName: (context) => HomeScreen(),
          },
          home: HomeScreen(),
        ));
  }
}
