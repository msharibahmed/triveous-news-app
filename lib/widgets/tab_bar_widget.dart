import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatelessWidget {
  Tab _tab(String text) => Tab(
        child: Text(text, style: GoogleFonts.quicksand(color: Colors.black)),
      );

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.3),
            indicatorColor: Colors.black,
            tabs: [
              _tab('Top Stories'),
              _tab('Business'),
              _tab('Health'),
              _tab('Technology'),
              _tab('Science'),
              _tab('Sports'),
              _tab('Entertainment'),
              _tab('Bitcoin'),
              _tab('Apple'),
              _tab('TechCrunch'),
              
            ]),
        preferredSize: Size.fromHeight(30.0));
  }
}
