import '../utils/imports.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _loadng = true;
  var flag = "https://img.icons8.com/emoji/48/000000/india-emoji.png";
  var lst = [true, true, true, true, true, true, true, true, true, true];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_loadng) {
      fetchFunc('in');
    }
    _loadng = false;
  }

  void fetchFunc(String country) {
    final prov = Provider.of<NewsProvider>(context, listen: false);
    prov.topStories(country).then((_) {
      setState(() {
        lst[0] = false;
      });
    });
    prov.business(country).then((_) {
      setState(() {
        lst[1] = false;
      });
    });
    prov.health(country).then((_) {
      setState(() {
        lst[2] = false;
      });
    });
    prov.technology(country).then((_) {
      setState(() {
        lst[3] = false;
      });
    });
    prov.science(country).then((_) {
      setState(() {
        lst[4] = false;
      });
    });
    prov.sports(country).then((_) {
      setState(() {
        lst[5] = false;
      });
    });
    prov.entertainment(country).then((_) {
      setState(() {
        lst[6] = false;
      });
    });
    prov.bitCoin(country).then((_) {
      setState(() {
        lst[7] = false;
      });
    });
    prov.wallStreetJournal(country).then((_) {
      setState(() {
        lst[8] = false;
      });
    });
    prov.techCrunch(country).then((_) {
      setState(() {
        lst[9] = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, DeveloperScreen.routeName);
              },
              icon: Icon(
                Icons.face,
                size: 32,
              ),
              color: Colors.black,
            ),
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
                      color: Colors.black,
                      fontSize: 16,
                    ))
              ],
            ),
            bottom: PreferredSize(
                child: TabBarWidget(), preferredSize: Size.fromHeight(30.0)),
            actions: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(
                              'Choose Country',
                              style: GoogleFonts.openSans(),
                            ),
                            content: Container(
                              height: 500,
                              width: 100,
                              child: ListView.builder(
                                itemBuilder: (cotext, e) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag =
                                          CountryModel.countries[e].countryUrl;
                                    });
                                    fetchFunc(
                                        CountryModel.countries[e].countryCode);
                                    Navigator.pop(context);
                                  },
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text((e + 1).toString() + '. '),
                                      Text(
                                          CountryModel.countries[e].countryName,
                                          style: GoogleFonts.openSans()),
                                      const Spacer(),
                                      Image.network(
                                        CountryModel.countries[e].countryUrl,
                                        height: 40,
                                        width: 40,
                                      ),
                                    ],
                                  ),
                                ),
                                itemCount: CountryModel.countries.length,
                              ),
                            ),
                          ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0, bottom: 2),
                  child: Image.network(
                    flag,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
          body: TabBarViewWidget(lst)),
    );
  }
}
