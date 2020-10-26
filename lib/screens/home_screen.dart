import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:triveous_news/providers/news_provider.dart';
import 'package:triveous_news/widgets/tab_bar_view_widget.dart';
import 'package:triveous_news/widgets/tab_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _loadng = true;

  var lst = [true, true, true, true, true, true, true, true, true, true];


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_loadng) {
      final prov = Provider.of<NewsProvider>(context, listen: false);
      prov.topStories('in').then((_) {
        setState(() {
          lst[0] = false;
        });
      });
      prov.business('in').then((_) {
        setState(() {
          lst[1] = false;
        });
      });
      prov.health('in').then((_) {
        setState(() {
          lst[2] = false;
        });
      });
      prov.technology('in').then((_) {
        setState(() {
          lst[3] = false;
        });
      });
      prov.science('in').then((_) {
        setState(() {
          lst[4] = false;
        });
      });
      prov.sports('in').then((_) {
        setState(() {
          lst[5] = false;
        });
      });
      prov.entertainment('in').then((_) {
        setState(() {
          lst[6] = false;
        });
      });
      prov.bitCoin('in').then((_) {
        setState(() {
          lst[7] = false;
        });
      });
      prov.apple('in').then((_) {
        setState(() {
          lst[8] = false;
        });
      });
      prov.techCrunch('in').then((_) {
        setState(() {
          lst[9] = false;
        });
      });
    }
    _loadng = false;
  }
  // int _value = 19;
  // var number = 0;

  @override
  Widget build(BuildContext context) {
    // print(lst);
    // print(Provider.of<NewsProvider>(context, listen: false).topStories('in'));

    return DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: AppBar(
            // actions: [
            //   DropdownButton(
            //       value: _value,
            //       items: countryName.map((country) {
            //         number++;
            //         return DropdownMenuItem(
            //           child: Text(country),
            //           value: number,
            //         );
            //       }),
            //       onChanged: (value) {
            //         setState(() {
            //           _value = value;
            //         });
            //       }),
            // ],
            elevation: 1,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Icon(Icons.person_outline),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('TRIVEOUS ',
                    style: GoogleFonts.dancingScript(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800)),
                Text('NEWS',
                    style: GoogleFonts.dancingScript(
                        color: Colors.black, fontSize: 16))
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
          body: TabBarViewWidget(lst)),
    );
  }
}

// const countryName = [
//       'Argentina',
//       'Australia',
//       'Austria',
//       'Belgium',
//       'Brazil',
//       'Bulgaria',
//       'Canada',
//       'China',
//       'Colombia',
//       'Cuba',
//       'Czech Republic',
//       'Egypt',
//       'France',
//       'Germany',
//       'Greece',
//       'Hong Kong',
//       'Hungary',
//       'India',
//       'Indonesia',
//       'Ireland',
//       'Israel',
//       'Italy',
//       'Japan',
//       'Latvia',
//       'Lithuania',
//       'Malaysia',
//       'Mexico',
//       'Morocco',
//       'Netherlands',
//       'New Zealand',
//       'Nigeria',
//       'Norway',
//       'Philippines',
//       'Poland',
//       'Portugal',
//       'Romania',
//       'Russia',
//       'Saudi Arabia',
//       'Serbia',
//       'Singapore',
//       'Slovakia',
//       'Slovenia',
//       'South Africa',
//       'South Korea',
//       'Sweden',
//       'Switzerland',
//       'Taiwan',
//       'Thailand',
//       'Turkey',
//       'UAE',
//       'Ukraine',
//       'United Kingdom',
//       'United States',
//       'Venuzuela'
//     ];
// ];
