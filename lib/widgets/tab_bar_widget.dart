import '../utils/imports.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.3),
            indicatorColor: Colors.black,
            tabs: [...AllStrings.TAB_NAMES.map((name) => TabClass(name))]),
        preferredSize: Size.fromHeight(30.0));
  }
}

class TabClass extends StatelessWidget {
  final String text;
  TabClass(this.text);
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(text, style: GoogleFonts.quicksand(color: Colors.black)),
    );
  }
}
