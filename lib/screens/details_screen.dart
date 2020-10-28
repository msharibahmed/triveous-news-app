import '../utils/imports.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = 'details-screen';
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final _key = UniqueKey();
  var _loading = true;

  void _pageFinished(String _) {
    setState(() {
      _loading = !_loading;
    });
  }

  final _webViewController = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    final url = ModalRoute.of(context).settings.arguments as String;
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          elevation: 0.1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('TRIVEOUS ',
                  style: GoogleFonts.bungeeShade(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w800)),
              Text('NEWS',
                  style: GoogleFonts.bungeeShade(
                      color: Colors.black, fontSize: 16))
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: mediaQuery.height,
              width: mediaQuery.width,
              child: WebView(
                onPageFinished: _pageFinished,
                key: _key,
                initialUrl: url,
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (webViewController) {
                  _webViewController.complete(webViewController);
                },
              ),
            ),
            _loading
                ? Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        const CircularProgressIndicator(
                          backgroundColor: Colors.black,
                        ),
                        Text('Page Loading...',
                            style: const TextStyle(color: Colors.black))
                      ]))
                : Stack()
          ],
        ));
  }
}
