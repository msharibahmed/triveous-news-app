import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:triveous_news/models/article_model.dart';

import '../providers/news_provider.dart';

class HomePageTabCard extends StatelessWidget {
  final int index;
  final List<ArticleModel> lst;

  HomePageTabCard(this.index, this.lst);
  @override
  Widget build(BuildContext context) {
    // final news1 = Provider.of<NewsProvider>(context, listen: false);
    // news1.getNews('00', 'category');
    // const notFound = 'https://www.plslwd.org/wp-content/plugins/lightbox/images/No-image-found.jpg';

    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.network(
              lst[index].urlToImage == null
                  ? "https://www.plslwd.org/wp-content/plugins/lightbox/images/No-image-found.jpg"
                  : lst[index].urlToImage,
              height: 200,
              width: MediaQuery.of(context).size.width - 20,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Text(
                  (index + 1).toString() + '.   ',
                  style: TextStyle(color: Colors.blue),
                ),
                Expanded(
                  child: Text(
                      lst[index].author == null ? 'Unknown' : lst[index].author,
                      style: GoogleFonts.openSansCondensed(
                          fontSize: 20, fontWeight: FontWeight.w500)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26.0, bottom: 5),
            child: Text(lst[index].title,
                style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.w600, fontSize: 17.5)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26.0, right: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('MMM dd, yyy').format(lst[index].publishedAt),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  DateFormat('jm').format(lst[index].publishedAt),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
