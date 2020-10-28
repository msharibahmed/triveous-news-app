import '../utils/imports.dart';

class TabBarViewWidget extends StatelessWidget {
  final List<bool> lst;
  TabBarViewWidget(this.lst);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<NewsProvider>(context, listen: false);

    return TabBarView(
      children: <Widget>[
        lst[0] ? Indicator() : HomePageListView(prov.tab0),
        lst[1] ? Indicator() : HomePageListView(prov.tab1),
        lst[2] ? Indicator() : HomePageListView(prov.tab2),
        lst[3] ? Indicator() : HomePageListView(prov.tab3),
        lst[4] ? Indicator() : HomePageListView(prov.tab4),
        lst[5] ? Indicator() : HomePageListView(prov.tab5),
        lst[6] ? Indicator() : HomePageListView(prov.tab6),
        lst[7] ? Indicator() : HomePageListView(prov.tab7),
        lst[8] ? Indicator() : HomePageListView(prov.tab8),
        lst[9] ? Indicator() : HomePageListView(prov.tab9),
      ],
    );
  }
}

class HomePageListView extends StatelessWidget {
  final List<ArticleModel> list;
  HomePageListView(this.list);
  @override
  Widget build(BuildContext context) {
    return list.length==0?const Center(child:const Text('No Articles To Show!')): ListView.builder(
      itemBuilder: (context, index) => HomePageTabCard(index, list),
      itemCount: list.length,
    );
  }
}

class Indicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child:const CircularProgressIndicator(
      backgroundColor: Colors.black,
    ));
  }
}
