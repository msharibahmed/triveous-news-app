import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:triveous_news/models/article_model.dart';
import 'package:triveous_news/providers/news_provider.dart';
import 'package:triveous_news/widgets/home_page_tab_card.dart';

class TabBarViewWidget extends StatelessWidget {
  final List<bool> lst;
  TabBarViewWidget(this.lst);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<NewsProvider>(context, listen: false);

    ListView _container(List<ArticleModel> lst) {
      return ListView.builder(
        itemBuilder: (context, index) => HomePageTabCard(index, lst),
        itemCount: lst.length,
      );
    }

    return TabBarView(
      children: <Widget>[
        lst[0]
            ? Center(
                child: CircularProgressIndicator(
                backgroundColor: Colors.black,
              ))
            : _container(prov.tab0),
        lst[1]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab1),
        lst[2]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab2),
        lst[3]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab3),
        lst[4]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab4),
        lst[5]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab5),
        lst[6]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab6),
        lst[7]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab7),
        lst[8]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab8),
        lst[9]
            ? Center(child: CircularProgressIndicator())
            : _container(prov.tab9),
      ],
    );
  }
}
