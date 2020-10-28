import 'package:http/http.dart' as http;
import '../utils/imports.dart';

class NewsProvider with ChangeNotifier {
  // int _index = 0;
  // void setCountry(int index) {
  //   _index = index;
  //   notifyListeners();
  // }

  List<ArticleModel> _tab0 = [];
  List<ArticleModel> get tab0 {
    return [..._tab0];
  }

  List<ArticleModel> _tab1 = [];
  List<ArticleModel> get tab1 {
    return [..._tab1];
  }

  List<ArticleModel> _tab2 = [];
  List<ArticleModel> get tab2 {
    return [..._tab2];
  }

  List<ArticleModel> _tab3 = [];
  List<ArticleModel> get tab3 {
    return [..._tab3];
  }

  List<ArticleModel> _tab4 = [];
  List<ArticleModel> get tab4 {
    return [..._tab4];
  }

  List<ArticleModel> _tab5 = [];
  List<ArticleModel> get tab5 {
    return [..._tab5];
  }

  List<ArticleModel> _tab6 = [];
  List<ArticleModel> get tab6 {
    return [..._tab6];
  }

  List<ArticleModel> _tab7 = [];
  List<ArticleModel> get tab7 {
    return [..._tab7];
  }

  List<ArticleModel> _tab8 = [];
  List<ArticleModel> get tab8 {
    return [..._tab8];
  }

  List<ArticleModel> _tab9 = [];
  List<ArticleModel> get tab9 {
    return [..._tab9];
  }

  Future<void> topStories(String country) async {
    final url =
        "http://newsapi.org/v2/top-headlines?country=$country&apiKey=${ApiKey.KEY}";
    // "https://api.mocki.io/v1/a92321d1";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];
        // print(resBody["author"]);

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  (article["urlToImage"].endsWith('.jpg') ||
                      article["urlToImage"].endsWith('.jpeg') ||
                      article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            // print(_tab0);

            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab0 = loadedArticles;
        // print(_tab0);
      } else {}
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }

  Future<void> business(String country) async {
    final url =
        "http://newsapi.org/v2/top-headlines?country=$country&category=business&apiKey=${ApiKey.KEY}";
    // "https://api.mocki.io/v1/a92321d1";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  (article["urlToImage"].endsWith('.jpg') ||
                      article["urlToImage"].endsWith('.jpeg') ||
                      article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab1 = loadedArticles;
        // print(_tab0);
      }
    } catch (error) {
      print(error);
    }
    notifyListeners();
  }

  Future<void> health(String country) async {
    final url =
        "http://newsapi.org/v2/top-headlines?country=$country&category=health&apiKey=${ApiKey.KEY}";
    // "https://api.mocki.io/v1/a92321d1";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  (article["urlToImage"].endsWith('.jpg') ||
                      article["urlToImage"].endsWith('.jpeg') ||
                      article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab2 = loadedArticles;
        // print(_tab0);
      }
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }

  Future<void> technology(String country) async {
    final url =
        "http://newsapi.org/v2/top-headlines?country=$country&category=technology&apiKey=${ApiKey.KEY}";
    // "https://api.mocki.io/v1/a92321d1";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  (article["urlToImage"].endsWith('.jpg') ||
                      article["urlToImage"].endsWith('.jpeg') ||
                      article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab3 = loadedArticles;
        // print(_tab0);
      }
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }

  Future<void> science(String country) async {
    final url =
        "http://newsapi.org/v2/top-headlines?country=$country&category=science&apiKey=${ApiKey.KEY}";
    // "https://api.mocki.io/v1/a92321d1";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  (article["urlToImage"].endsWith('.jpg') ||
                      article["urlToImage"].endsWith('.jpeg') ||
                      article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab4 = loadedArticles;
        // print(_tab0);
      }
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }

  Future<void> sports(String country) async {
    final url =
        "http://newsapi.org/v2/top-headlines?country=$country&category=sports&apiKey=${ApiKey.KEY}";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  (article["urlToImage"].endsWith('.jpg') ||
                      article["urlToImage"].endsWith('.jpeg') ||
                      article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab5 = loadedArticles;
        // print(_tab0);
      }
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }

  Future<void> entertainment(String country) async {
    final url =
        "http://newsapi.org/v2/top-headlines?country=$country&category=entertainment&apiKey=${ApiKey.KEY}";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  (article["urlToImage"].endsWith('.jpg') ||
                      article["urlToImage"].endsWith('.jpeg') ||
                      article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab6 = loadedArticles;
        // print(_tab0);
      }
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }

  Future<void> bitCoin(String country) async {
    final url =
        "http://newsapi.org/v2/everything?q=bitcoin&from=2020-09-28&sortBy=publishedAt&apiKey=${ApiKey.KEY}";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];
        // print( resBody);

        resBody["articles"].forEach((article) {
          if (
              // (article["urlToImage"].endsWith('.jpg') ||
              // article["urlToImage"].endsWith('.jpeg') ||
              // article["urlToImage"].endsWith('.png')) &&
              // article["urlToImage"].startsWith('https') &&
              article["author"] != null &&
                  article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            // print(resBody);

            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab7 = loadedArticles;
        // print(_tab0);
      }
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }

  Future<void> wallStreetJournal(String country) async {
    final url =
        "http://newsapi.org/v2/everything?domains=wsj.com&apiKey=${ApiKey.KEY}";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  (article["urlToImage"].endsWith('.jpg') ||
                      article["urlToImage"].endsWith('.jpeg') ||
                      article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab8 = loadedArticles;
        // print(_tab0);

      }
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }

  Future<void> techCrunch(String country) async {
    final url =
        "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=${ApiKey.KEY}";

    try {
      final response = await http.get(url);
      final resBody = jsonDecode(response.body);
      // print(resBody);
      if (resBody['status'] == "ok") {
        List<ArticleModel> loadedArticles = [];

        resBody["articles"].forEach((article) {
          if (
              // article["author"] != null &&
              article["title"] != null &&
                  article["description"] != null &&
                  article["url"] != null &&
                  // (article["urlToImage"].endsWith('.jpg') ||
                  // article["urlToImage"].endsWith('.jpeg') ||
                  // article["urlToImage"].endsWith('.png')) &&
                  article["urlToImage"].startsWith('http') &&
                  // article["urlToImage"] != null &&
                  article["content"] != null) {
            loadedArticles.add(ArticleModel(
                author: article['author'],
                title: article['title'],
                description: article['description'],
                url: article['url'],
                urlToImage: article['urlToImage'],
                publishedAt: DateTime.parse(article['publishedAt']),
                content: article['content']));
          }
        });
        _tab9 = loadedArticles;
        // print(_tab0);

      }
    } catch (error) {
      print(error);
    }

    notifyListeners();
  }
}
