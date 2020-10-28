import '../utils/imports.dart';
import 'package:intl/intl.dart';

class HomePageTabCard extends StatelessWidget {
  final int index;
  final List<ArticleModel> list;

  HomePageTabCard(this.index, this.list);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailsScreen.routeName,
            arguments: list[index].url);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300],
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.network(
                list[index].urlToImage == null
                    ? "https://www.plslwd.org/wp-content/plugins/lightbox/images/No-image-found.jpg"
                    : list[index].urlToImage,
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
                    style: const TextStyle(color: Colors.blue),
                  ),
                  Expanded(
                    child: Text(
                        list[index].author == null
                            ? 'Unknown'
                            : list[index].author,
                        style: GoogleFonts.openSansCondensed(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, bottom: 5, right: 2),
              child: Text(list[index].title,
                  style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.w600, fontSize: 17.5)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 16, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    DateFormat('MMM dd, yyy').format(list[index].publishedAt),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    DateFormat('jm').format(list[index].publishedAt),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
