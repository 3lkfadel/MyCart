import 'package:flutter/material.dart';



class ArticleListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Article List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArticleListPage(),
    );
  }
}

class ArticleListPage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      name: "Article 1",
      image: "https://via.placeholder.com/150",
      price: 10,
    ),
    Article(
      name: "Article 2",
      image: "https://via.placeholder.com/150",
      price: 20,
    ),
    // Ajoutez d'autres articles selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(articles[index].image),
            title: Text(articles[index].name),
            subtitle: Text('Prix: \$${articles[index].price}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // Ajouter l'article aux favoris
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    // Ajouter l'article au panier
                  },
                ),
              ],
            ),
            onTap: () {
              // Rediriger vers la page de détails
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsPage(article: articles[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class Article {
  final String name;
  final String image;
  final double price;

  Article({required this.name, required this.image, required this.price});
}

class DetailsPage extends StatelessWidget {
  final Article article;

  DetailsPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Details de ${article.name}',
              style: TextStyle(fontSize: 24),
            ),
            Image.network(article.image),
            Text('Prix: \$${article.price}', style: TextStyle(fontSize: 20)),
            // Ajoutez d'autres informations sur l'article ici
          ],
        ),
      ),
    );
  }
}
